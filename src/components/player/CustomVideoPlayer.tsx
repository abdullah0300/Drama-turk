'use client';

import React, { useEffect, useRef, useState, useCallback } from 'react';
import Hls from 'hls.js';
import { 
  Play, 
  Pause, 
  Volume2, 
  VolumeX, 
  Maximize, 
  Minimize, 
  RotateCcw, 
  Settings, 
  AlertCircle, 
  Copy, 
  Check, 
  ArrowRight,
  PictureInPicture2
} from 'lucide-react';
import { VideoRecord, EpisodeGroup } from '@/types/catalog';
import { useUserPreferences } from '@/context/UserPreferencesContext';

interface QualityLevel {
  id: number;
  height: number;
  bitrate: number;
  label: string;
}

interface CustomVideoPlayerProps {
  currentVideo: VideoRecord;
  episodeGroup: EpisodeGroup;
  dramaId: string;
  collectionId: string;
  dramaTitle: string;
  allRenditions: VideoRecord[];
  onRenditionChange?: (video: VideoRecord) => void;
  nextEpisodeGroup?: EpisodeGroup;
  onNavigateNext?: () => void;
}

export function CustomVideoPlayer({
  currentVideo,
  episodeGroup,
  dramaId,
  collectionId,
  dramaTitle,
  allRenditions,
  onRenditionChange,
  nextEpisodeGroup,
  onNavigateNext,
}: CustomVideoPlayerProps) {
  const videoRef = useRef<HTMLVideoElement | null>(null);
  const containerRef = useRef<HTMLDivElement | null>(null);
  const hlsRef = useRef<Hls | null>(null);

  const { saveProgress, getProgress, preferences, setVolumePreference, isLoaded } = useUserPreferences();

  const [isPlaying, setIsPlaying] = useState(false);
  const [currentTime, setCurrentTime] = useState(0);
  const [duration, setDuration] = useState(0);
  const [volume, setVolume] = useState(preferences.volume ?? 1);
  const [isMuted, setIsMuted] = useState(preferences.muted ?? false);
  const [isFullscreen, setIsFullscreen] = useState(false);
  const [playbackSpeed, setPlaybackSpeed] = useState(1);
  const [isLoading, setIsLoading] = useState(true);
  const [errorState, setErrorState] = useState<string | null>(null);
  const [showResumePrompt, setShowResumePrompt] = useState(false);
  const [resumeTimeTarget, setResumeTimeTarget] = useState(0);

  // Rendition & Quality
  const [qualityLevels, setQualityLevels] = useState<QualityLevel[]>([]);
  const [currentQualityIndex, setCurrentQualityIndex] = useState<number>(-1); // -1 = Auto
  const [showSettingsMenu, setShowSettingsMenu] = useState(false);

  // Autoplay countdown
  const [countdown, setCountdown] = useState<number | null>(null);
  const countdownIntervalRef = useRef<NodeJS.Timeout | null>(null);

  // Diagnostic copy state
  const [copiedDiagnostic, setCopiedDiagnostic] = useState(false);

  const streamUrl = currentVideo.stream_urls?.[0];

  // Helper to format time
  const formatTime = (secs: number) => {
    if (isNaN(secs) || secs < 0) return '00:00';
    const h = Math.floor(secs / 3600);
    const m = Math.floor((secs % 3600) / 60);
    const s = Math.floor(secs % 60);
    if (h > 0) {
      return `${h}:${m < 10 ? '0' : ''}${m}:${s < 10 ? '0' : ''}${s}`;
    }
    return `${m < 10 ? '0' : ''}${m}:${s < 10 ? '0' : ''}${s}`;
  };

  // Offer to resume once per video, after saved history has loaded. Progress saves
  // during playback update history, so re-checking on every change would keep
  // reopening the prompt.
  const resumeCheckedFor = useRef<string | null>(null);
  useEffect(() => {
    if (!isLoaded || resumeCheckedFor.current === currentVideo.id) return;
    resumeCheckedFor.current = currentVideo.id;
    const saved = getProgress(currentVideo.id);
    if (saved && saved.currentTime > 15 && !saved.completed) {
      setResumeTimeTarget(saved.currentTime);
      setShowResumePrompt(true);
    } else {
      setShowResumePrompt(false);
    }
  }, [currentVideo.id, isLoaded, getProgress]);

  // Clean up HLS on unmount or stream change
  const cleanupHls = useCallback(() => {
    if (hlsRef.current) {
      hlsRef.current.destroy();
      hlsRef.current = null;
    }
    if (countdownIntervalRef.current) {
      clearInterval(countdownIntervalRef.current);
      countdownIntervalRef.current = null;
    }
    setQualityLevels([]);
    setCurrentQualityIndex(-1);
    setIsLoading(true);
    setErrorState(null);
    setCountdown(null);
  }, []);

  // Initialize playback
  useEffect(() => {
    cleanupHls();
    const videoElement = videoRef.current;
    if (!videoElement || !streamUrl) {
      if (!streamUrl) {
        setErrorState('No stream URL available for this episode record.');
      }
      return;
    }

    let hls: Hls | null = null;

    if (streamUrl.includes('.m3u8')) {
      if (Hls.isSupported()) {
        hls = new Hls({
          enableWorker: true,
          lowLatencyMode: false,
          backBufferLength: 90,
        });

        hls.loadSource(streamUrl);
        hls.attachMedia(videoElement);

        hls.on(Hls.Events.MANIFEST_PARSED, (event, data) => {
          setIsLoading(false);
          // Only show actual distinct quality renditions
          if (data.levels && data.levels.length > 1) {
            const formatted: QualityLevel[] = data.levels.map((lvl, index) => ({
              id: index,
              height: lvl.height,
              bitrate: lvl.bitrate,
              label: lvl.height > 0 ? `${lvl.height}p` : `${Math.round(lvl.bitrate / 1000)} kbps`,
            }));
            setQualityLevels(formatted);
          } else {
            setQualityLevels([]);
          }
        });

        hls.on(Hls.Events.LEVEL_SWITCHED, (event, data) => {
          // Track auto-switched level
        });

        hls.on(Hls.Events.ERROR, (event, data) => {
          if (data.fatal) {
            console.warn('[Player] Fatal HLS error:', data.type, data.details);
            switch (data.type) {
              case Hls.ErrorTypes.NETWORK_ERROR:
                setErrorState('Network error connecting to stream source. The upstream media host may be unreachable or subject to CORS restrictions.');
                hls?.startLoad();
                break;
              case Hls.ErrorTypes.MEDIA_ERROR:
                hls?.recoverMediaError();
                break;
              default:
                cleanupHls();
                setErrorState('Playback error occurred with the video source.');
                break;
            }
          }
        });

        hlsRef.current = hls;
      } else if (videoElement.canPlayType('application/vnd.apple.mpegurl')) {
        // Native HLS for Safari/iOS
        videoElement.src = streamUrl;
        setIsLoading(false);
      } else {
        setErrorState('Your browser does not support HLS video streaming.');
      }
    } else {
      // Direct MP4 fallback
      videoElement.src = streamUrl;
      setIsLoading(false);
    }

    return () => {
      cleanupHls();
    };
  }, [streamUrl, cleanupHls]);

  // Periodic progress saving (every 5s)
  useEffect(() => {
    if (!isPlaying || duration <= 0) return;

    const interval = setInterval(() => {
      if (videoRef.current) {
        const time = videoRef.current.currentTime;
        const isComplete = time > duration * 0.92;
        saveProgress({
          videoId: currentVideo.id,
          dramaId,
          collectionId,
          episodeGroupId: episodeGroup.id,
          displayLabel: episodeGroup.display_label,
          dramaTitle,
          episodeTitle: currentVideo.title || episodeGroup.display_label,
          thumbnailUrl: currentVideo.thumbnail_urls?.[0],
          currentTime: time,
          duration,
          updatedAt: Date.now(),
          completed: isComplete,
          language: currentVideo.languages?.[0],
          version: currentVideo.version,
          url: typeof window !== 'undefined' ? window.location.pathname : undefined,
        });
      }
    }, 5000);

    return () => clearInterval(interval);
  }, [isPlaying, duration, currentVideo, episodeGroup, dramaId, collectionId, dramaTitle, saveProgress]);

  // Video event handlers
  const handleTimeUpdate = () => {
    if (videoRef.current) {
      setCurrentTime(videoRef.current.currentTime);
    }
  };

  const handleLoadedMetadata = () => {
    if (videoRef.current) {
      setDuration(videoRef.current.duration);
      setIsLoading(false);
      videoRef.current.volume = isMuted ? 0 : volume;
      videoRef.current.playbackRate = playbackSpeed;
    }
  };

  const handleEnded = () => {
    setIsPlaying(false);
    // Mark completed
    saveProgress({
      videoId: currentVideo.id,
      dramaId,
      collectionId,
      episodeGroupId: episodeGroup.id,
      displayLabel: episodeGroup.display_label,
      dramaTitle,
      episodeTitle: currentVideo.title || episodeGroup.display_label,
      thumbnailUrl: currentVideo.thumbnail_urls?.[0],
      currentTime: duration,
      duration,
      updatedAt: Date.now(),
      completed: true,
      language: currentVideo.languages?.[0],
      version: currentVideo.version,
      url: typeof window !== 'undefined' ? window.location.pathname : undefined,
    });

    // Opt-in cancelable autoplay
    if (preferences.autoplayNext && nextEpisodeGroup && onNavigateNext) {
      setCountdown(8);
      countdownIntervalRef.current = setInterval(() => {
        setCountdown(prev => {
          if (prev === null || prev <= 1) {
            clearInterval(countdownIntervalRef.current!);
            onNavigateNext();
            return null;
          }
          return prev - 1;
        });
      }, 1000);
    }
  };

  const cancelAutoplay = () => {
    if (countdownIntervalRef.current) {
      clearInterval(countdownIntervalRef.current);
      countdownIntervalRef.current = null;
    }
    setCountdown(null);
  };

  // Controls
  const togglePlay = () => {
    if (!videoRef.current) return;
    if (videoRef.current.paused) {
      videoRef.current.play().then(() => setIsPlaying(true)).catch(() => setIsPlaying(false));
    } else {
      videoRef.current.pause();
      setIsPlaying(false);
    }
  };

  const handleSeek = (e: React.ChangeEvent<HTMLInputElement>) => {
    const target = parseFloat(e.target.value);
    setCurrentTime(target);
    if (videoRef.current) {
      videoRef.current.currentTime = target;
    }
  };

  const handleVolumeChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const newVol = parseFloat(e.target.value);
    setVolume(newVol);
    setIsMuted(newVol === 0);
    if (videoRef.current) {
      videoRef.current.volume = newVol;
    }
    setVolumePreference(newVol, newVol === 0);
  };

  const toggleMute = () => {
    const newMuted = !isMuted;
    setIsMuted(newMuted);
    if (videoRef.current) {
      videoRef.current.volume = newMuted ? 0 : volume;
    }
    setVolumePreference(volume, newMuted);
  };

  const handleSpeedChange = (speed: number) => {
    setPlaybackSpeed(speed);
    if (videoRef.current) {
      videoRef.current.playbackRate = speed;
    }
    setShowSettingsMenu(false);
  };

  const handleQualitySelect = (index: number) => {
    setCurrentQualityIndex(index);
    if (hlsRef.current) {
      hlsRef.current.currentLevel = index;
    }
    setShowSettingsMenu(false);
  };

  const toggleFullscreen = () => {
    if (!containerRef.current) return;
    if (!document.fullscreenElement) {
      containerRef.current.requestFullscreen().then(() => setIsFullscreen(true)).catch(console.warn);
    } else {
      document.exitFullscreen().then(() => setIsFullscreen(false)).catch(console.warn);
    }
  };

  const togglePiP = async () => {
    if (!videoRef.current) return;
    try {
      if (document.pictureInPictureElement) {
        await document.exitPictureInPicture();
      } else if (document.pictureInPictureEnabled) {
        await videoRef.current.requestPictureInPicture();
      }
    } catch (e) {
      console.warn('PiP failed:', e);
    }
  };

  // Keyboard accessibility
  const handleKeyDown = (e: React.KeyboardEvent) => {
    // Only capture keys when focused on the player
    if (['input', 'textarea', 'select'].includes((e.target as HTMLElement).tagName.toLowerCase())) return;

    switch (e.key.toLowerCase()) {
      case ' ':
      case 'k':
        e.preventDefault();
        togglePlay();
        break;
      case 'arrowleft':
        e.preventDefault();
        if (videoRef.current) videoRef.current.currentTime = Math.max(0, videoRef.current.currentTime - 10);
        break;
      case 'arrowright':
        e.preventDefault();
        if (videoRef.current) videoRef.current.currentTime = Math.min(duration, videoRef.current.currentTime + 10);
        break;
      case 'm':
        e.preventDefault();
        toggleMute();
        break;
      case 'f':
        e.preventDefault();
        toggleFullscreen();
        break;
    }
  };

  // Diagnostic JSON copy for reporting playback problems
  const copyDiagnosticInfo = () => {
    const diagnostic = {
      timestamp: new Date().toISOString(),
      dramaId,
      collectionId,
      episodeGroupId: episodeGroup.id,
      videoId: currentVideo.id,
      title: currentVideo.title,
      streamUrl: streamUrl || 'missing',
      currentTime,
      duration,
      userAgent: typeof navigator !== 'undefined' ? navigator.userAgent : 'unknown',
      hlsSupported: Hls.isSupported(),
      error: errorState,
    };

    navigator.clipboard.writeText(JSON.stringify(diagnostic, null, 2)).then(() => {
      setCopiedDiagnostic(true);
      setTimeout(() => setCopiedDiagnostic(false), 3000);
    });
  };

  const handleResumeChoice = (resume: boolean) => {
    setShowResumePrompt(false);
    if (resume && videoRef.current && resumeTimeTarget > 0) {
      videoRef.current.currentTime = Math.min(resumeTimeTarget, duration || resumeTimeTarget);
      videoRef.current.play().then(() => setIsPlaying(true)).catch(console.warn);
    } else if (videoRef.current) {
      videoRef.current.currentTime = 0;
      videoRef.current.play().then(() => setIsPlaying(true)).catch(console.warn);
    }
  };

  return (
    <div 
      ref={containerRef}
      tabIndex={0}
      data-video-id={currentVideo.id}
      data-stream-url={streamUrl}
      onKeyDown={handleKeyDown}
      className="relative w-full aspect-video bg-black rounded-[16px] overflow-hidden shadow-player group select-none focus:outline-none focus:ring-2 focus:ring-amber-500"
      aria-label={`Video player for ${currentVideo.title || episodeGroup.display_label}`}
    >
      <video
        ref={videoRef}
        playsInline
        preload="metadata"
        onTimeUpdate={handleTimeUpdate}
        onLoadedMetadata={handleLoadedMetadata}
        onEnded={handleEnded}
        onWaiting={() => setIsLoading(true)}
        onPlaying={() => { setIsLoading(false); setIsPlaying(true); }}
        onPause={() => setIsPlaying(false)}
        onError={() => {
          setIsLoading(false);
          setErrorState('The media source encountered a playback error or network block.');
        }}
        className="w-full h-full object-contain cursor-pointer"
        onClick={togglePlay}
      />

      {/* Loading Spinner */}
      {isLoading && !errorState && (
        <div className="absolute inset-0 flex items-center justify-center bg-black/40 backdrop-blur-sm pointer-events-none">
          <div className="w-12 h-12 border-3 border-amber-500/20 border-t-amber-500 rounded-full animate-spin" />
        </div>
      )}

      {/* Resume Overlay */}
      {showResumePrompt && (
        <div className="absolute inset-0 flex items-center justify-center bg-black/85 backdrop-blur-md z-30 p-6">
          <div className="max-w-md w-full bg-surface p-6 rounded-lg border border-surface-border text-center shadow-elevated">
            <h3 className="text-lg font-medium text-text-primary mb-2">Resume Watching?</h3>
            <p className="text-sm text-text-secondary mb-6">
              You previously stopped at <span className="text-amber-400 font-mono font-medium">{formatTime(resumeTimeTarget)}</span>.
            </p>
            <div className="flex gap-3 justify-center">
              <button
                onClick={() => handleResumeChoice(true)}
                className="px-5 py-2.5 bg-amber-500 hover:bg-amber-600 text-stone-950 font-medium rounded-md text-sm transition-colors"
              >
                Resume ({formatTime(resumeTimeTarget)})
              </button>
              <button
                onClick={() => handleResumeChoice(false)}
                className="px-5 py-2.5 bg-surface-hover hover:bg-surface-active text-text-secondary hover:text-text-primary border border-surface-border rounded-md text-sm transition-colors"
              >
                Start Over
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Autoplay Next Episode Overlay */}
      {countdown !== null && nextEpisodeGroup && onNavigateNext && (
        <div className="absolute inset-0 flex items-center justify-center bg-black/80 backdrop-blur-sm z-30 p-6">
          <div className="max-w-md w-full bg-surface p-6 rounded-lg border border-surface-border text-center shadow-elevated">
            <div className="text-amber-500 text-xs font-semibold uppercase tracking-wider mb-1">Up Next</div>
            <h3 className="text-base font-medium text-text-primary mb-2">{nextEpisodeGroup.display_label}</h3>
            <p className="text-sm text-text-secondary mb-6">
              Starting automatically in <span className="font-mono font-bold text-amber-400 text-base">{countdown}s</span>
            </p>
            <div className="flex gap-3 justify-center">
              <button
                onClick={onNavigateNext}
                className="px-5 py-2.5 bg-amber-500 hover:bg-amber-600 text-stone-950 font-medium rounded-md text-sm flex items-center gap-2 transition-colors"
              >
                Play Now <ArrowRight size={16} />
              </button>
              <button
                onClick={cancelAutoplay}
                className="px-5 py-2.5 bg-surface-hover hover:bg-surface-active text-text-secondary hover:text-text-primary border border-surface-border rounded-md text-sm transition-colors"
              >
                Cancel Autoplay
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Error Fallback State */}
      {errorState && (
        <div className="absolute inset-0 flex flex-col items-center justify-center bg-stone-950/95 p-6 text-center z-20">
          <AlertCircle className="w-12 h-12 text-amber-500 mb-3" />
          <h3 className="text-lg font-medium text-text-primary mb-2">Stream Playback Notice</h3>
          <p className="text-sm text-text-secondary max-w-lg mb-6 leading-relaxed">
            {errorState}
          </p>
          <div className="flex flex-wrap gap-3 justify-center">
            <button
              onClick={() => {
                setErrorState(null);
                setIsLoading(true);
                if (hlsRef.current) hlsRef.current.startLoad();
              }}
              className="px-4 py-2 bg-amber-500 hover:bg-amber-600 text-stone-950 text-sm font-medium rounded transition-colors"
            >
              Retry Stream
            </button>
            <button
              onClick={copyDiagnosticInfo}
              className="px-4 py-2 bg-surface-hover hover:bg-surface-active text-text-primary border border-surface-border text-sm font-medium rounded flex items-center gap-2 transition-colors"
            >
              {copiedDiagnostic ? <Check size={16} className="text-green-400" /> : <Copy size={16} />}
              {copiedDiagnostic ? 'Diagnostic Copied' : 'Copy Diagnostics'}
            </button>
          </div>
        </div>
      )}

      {/* Custom Accessible Controls Overlay */}
      <div 
        className={`absolute inset-x-0 bottom-0 bg-gradient-to-t from-black/95 via-black/60 to-transparent p-4 transition-opacity duration-200 ${
          isPlaying ? 'opacity-0 group-hover:opacity-100 group-focus-within:opacity-100' : 'opacity-100'
        }`}
      >
        {/* Seek Bar */}
        <div className="relative mb-3">
          <input
            type="range"
            min={0}
            max={duration || 100}
            step={0.1}
            value={currentTime}
            onChange={handleSeek}
            aria-label="Seek video position"
            className="w-full h-1.5 bg-white/20 hover:h-2.5 rounded-lg appearance-none cursor-pointer accent-amber-500 transition-all duration-150"
          />
        </div>

        <div className="flex items-center justify-between text-xs text-text-primary">
          {/* Left Controls */}
          <div className="flex items-center gap-3">
            <button
              onClick={togglePlay}
              aria-label={isPlaying ? 'Pause' : 'Play'}
              className="p-2 hover:bg-white/10 rounded-full transition-colors text-white"
            >
              {isPlaying ? <Pause size={20} /> : <Play size={20} />}
            </button>

            {/* Rewind 10s */}
            <button
              onClick={() => {
                if (videoRef.current) videoRef.current.currentTime = Math.max(0, currentTime - 10);
              }}
              aria-label="Rewind 10 seconds"
              className="p-2 hover:bg-white/10 rounded-full transition-colors text-text-secondary hover:text-white"
            >
              <RotateCcw size={16} />
            </button>

            {/* Volume */}
            <div className="flex items-center gap-2">
              <button
                onClick={toggleMute}
                aria-label={isMuted ? 'Unmute' : 'Mute'}
                className="p-2 hover:bg-white/10 rounded-full transition-colors text-white"
              >
                {isMuted || volume === 0 ? <VolumeX size={18} /> : <Volume2 size={18} />}
              </button>
              <input
                type="range"
                min={0}
                max={1}
                step={0.05}
                value={isMuted ? 0 : volume}
                onChange={handleVolumeChange}
                aria-label="Volume slider"
                className="w-16 h-1 bg-white/20 rounded appearance-none cursor-pointer accent-amber-500"
              />
            </div>

            {/* Time Stamp */}
            <span className="font-mono text-[11px] text-text-secondary ml-1">
              {formatTime(currentTime)} / {formatTime(duration)}
            </span>
          </div>

          {/* Right Controls */}
          <div className="flex items-center gap-2">
            {/* Rendition / Language Switcher */}
            {allRenditions.length > 1 && onRenditionChange && (
              <div className="flex items-center gap-1 bg-surface/70 px-2 py-1 rounded border border-surface-border text-[11px]">
                <span className="text-text-tertiary">Rendition:</span>
                {allRenditions.map(rend => {
                  const isActive = rend.id === currentVideo.id;
                  const lang = rend.languages && rend.languages.length > 0 ? rend.languages.join(' & ') : 'Original';
                  const label = rend.version === 'dubbed' ? `${lang} Dub` : `${lang} Subtitles`;
                  return (
                    <button
                      key={rend.id}
                      onClick={() => onRenditionChange(rend)}
                      className={`px-2 py-0.5 rounded text-[11px] font-medium transition-colors ${
                        isActive
                          ? 'bg-amber-500 text-stone-950 font-semibold'
                          : 'text-text-secondary hover:text-white hover:bg-white/10'
                      }`}
                    >
                      {label}
                    </button>
                  );
                })}
              </div>
            )}

            {/* Settings Menu Toggle */}
            <div className="relative">
              <button
                onClick={() => setShowSettingsMenu(!showSettingsMenu)}
                aria-label="Settings"
                className="p-2 hover:bg-white/10 rounded-full transition-colors text-text-secondary hover:text-white"
              >
                <Settings size={18} />
              </button>

              {showSettingsMenu && (
                <div className="absolute right-0 bottom-full mb-2 w-48 bg-surface-bg border border-surface-border rounded-lg shadow-elevated p-2 z-40 text-xs">
                  <div className="font-semibold text-text-secondary px-2 py-1 border-b border-surface-border mb-1">
                    Speed
                  </div>
                  <div className="flex flex-wrap gap-1 mb-2">
                    {[0.75, 1, 1.25, 1.5, 2].map(speed => (
                      <button
                        key={speed}
                        onClick={() => handleSpeedChange(speed)}
                        className={`px-2 py-1 rounded text-xs transition-colors ${
                          playbackSpeed === speed
                            ? 'bg-amber-500 text-stone-950 font-semibold'
                            : 'text-text-secondary hover:bg-white/10'
                        }`}
                      >
                        {speed}x
                      </button>
                    ))}
                  </div>

                  {qualityLevels.length > 0 && (
                    <>
                      <div className="font-semibold text-text-secondary px-2 py-1 border-b border-surface-border mb-1">
                        Adaptive Quality
                      </div>
                      <div className="flex flex-col gap-0.5">
                        <button
                          onClick={() => handleQualitySelect(-1)}
                          className={`text-left px-2 py-1 rounded transition-colors ${
                            currentQualityIndex === -1
                              ? 'bg-amber-500 text-stone-950 font-semibold'
                              : 'text-text-secondary hover:bg-white/10'
                          }`}
                        >
                          Auto
                        </button>
                        {qualityLevels.map(ql => (
                          <button
                            key={ql.id}
                            onClick={() => handleQualitySelect(ql.id)}
                            className={`text-left px-2 py-1 rounded transition-colors ${
                              currentQualityIndex === ql.id
                                ? 'bg-amber-500 text-stone-950 font-semibold'
                                : 'text-text-secondary hover:bg-white/10'
                            }`}
                          >
                            {ql.label}
                          </button>
                        ))}
                      </div>
                    </>
                  )}
                </div>
              )}
            </div>

            {/* PiP */}
            <button
              onClick={togglePiP}
              aria-label="Picture in Picture"
              className="p-2 hover:bg-white/10 rounded-full transition-colors text-text-secondary hover:text-white"
            >
              <PictureInPicture2 size={18} />
            </button>

            {/* Fullscreen */}
            <button
              onClick={toggleFullscreen}
              aria-label={isFullscreen ? 'Exit Fullscreen' : 'Enter Fullscreen'}
              className="p-2 hover:bg-white/10 rounded-full transition-colors text-white"
            >
              {isFullscreen ? <Minimize size={18} /> : <Maximize size={18} />}
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
