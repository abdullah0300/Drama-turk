'use client';

import React, { useEffect, useRef, useState, useCallback } from 'react';
import Hls, { FetchLoader } from 'hls.js';
import { 
  Play, 
  Pause, 
  Volume2, 
  VolumeX, 
  Maximize, 
  Minimize, 
  RotateCcw, 
  RotateCw,
  SkipForward,
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
    setIsPlaying(false);
    setCurrentTime(0);
    setDuration(0);
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
        // The server exposes the real source for discovery. Hand playback over
        // to MediaSource before hls.js attaches its object URL in this browser.
        videoElement.removeAttribute('src');
        videoElement.load();
        hls = new Hls({
          enableWorker: true,
          lowLatencyMode: false,
          backBufferLength: 90,
          // Some hosts (video.twimg.com) answer 403 to any request carrying a third-party
          // Referer, so media requests go out without one.
          ...(typeof fetch === 'function' && typeof ReadableStream === 'function'
            ? {
                loader: FetchLoader,
                fetchSetup: (context: { url: string }, initParams: RequestInit) =>
                  new Request(context.url, { ...initParams, referrerPolicy: 'no-referrer' }),
              }
            : {}),
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
            if (data.details === Hls.ErrorDetails.MANIFEST_INCOMPATIBLE_CODECS_ERROR) {
              // Recovery cannot help when the browser has no decoder for the stream (H.264/AAC).
              cleanupHls();
              setIsLoading(false);
              setErrorState('This browser cannot decode this video format (H.264/AAC). Try Chrome, Edge, Safari or Firefox on a recent device.');
              return;
            }
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

  // ---- Controls visibility (auto-hide while playing; tap or mouse move brings them back) ----
  const [controlsVisible, setControlsVisible] = useState(true);
  const hideTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const showControls = useCallback(() => {
    setControlsVisible(true);
    if (hideTimerRef.current) clearTimeout(hideTimerRef.current);
    hideTimerRef.current = setTimeout(() => {
      if (videoRef.current && !videoRef.current.paused) setControlsVisible(false);
    }, 3000);
  }, []);
  useEffect(() => {
    if (!isPlaying) setControlsVisible(true);
    else showControls();
  }, [isPlaying, showControls]);
  useEffect(() => () => { if (hideTimerRef.current) clearTimeout(hideTimerRef.current); }, []);

  // ---- Seeking helpers ----
  const [buffered, setBuffered] = useState(0);
  const [seekFlash, setSeekFlash] = useState<{ side: 'back' | 'fwd'; amount: number; key: number; gesture: boolean } | null>(null);
  const flashTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);

  const seekTo = useCallback((target: number) => {
    const v = videoRef.current;
    if (!v) return;
    const d = v.duration || duration;
    const t = Math.max(0, d ? Math.min(target, d - 0.25) : target);
    v.currentTime = t;
    setCurrentTime(t);
  }, [duration]);

  const seekBy = useCallback((delta: number, gesture = false) => {
    const v = videoRef.current;
    if (!v) return;
    seekTo(v.currentTime + delta);
    const side = delta < 0 ? 'back' : 'fwd';
    setSeekFlash((prev) => ({ side, amount: prev && prev.side === side ? prev.amount + Math.abs(delta) : Math.abs(delta), key: Date.now(), gesture }));
    if (flashTimerRef.current) clearTimeout(flashTimerRef.current);
    flashTimerRef.current = setTimeout(() => setSeekFlash(null), 800);
  }, [seekTo]);

  const handleProgress = () => {
    const v = videoRef.current;
    if (!v || !v.buffered.length) return;
    for (let i = 0; i < v.buffered.length; i++) {
      if (v.buffered.start(i) <= v.currentTime + 0.5 && v.buffered.end(i) >= v.currentTime) {
        setBuffered(v.buffered.end(i));
        return;
      }
    }
  };

  // ---- Controls ----
  const togglePlay = () => {
    if (!videoRef.current) return;
    if (videoRef.current.paused) {
      videoRef.current.play().then(() => setIsPlaying(true)).catch(() => setIsPlaying(false));
    } else {
      videoRef.current.pause();
      setIsPlaying(false);
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

  useEffect(() => {
    const onChange = () => setIsFullscreen(!!document.fullscreenElement);
    document.addEventListener('fullscreenchange', onChange);
    return () => document.removeEventListener('fullscreenchange', onChange);
  }, []);

  const toggleFullscreen = () => {
    const el = containerRef.current;
    const v = videoRef.current as (HTMLVideoElement & { webkitEnterFullscreen?: () => void }) | null;
    if (!el) return;
    if (document.fullscreenElement) {
      document.exitFullscreen().catch(console.warn);
      return;
    }
    if (el.requestFullscreen) {
      el.requestFullscreen()
        .then(() => {
          // Phones: turn to landscape where the browser allows it.
          const o = screen.orientation as ScreenOrientation & { lock?: (o: string) => Promise<void> };
          o?.lock?.('landscape').catch(() => {});
        })
        .catch(console.warn);
    } else if (v?.webkitEnterFullscreen) {
      // iPhone Safari only allows the native video player to go fullscreen.
      v.webkitEnterFullscreen();
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

  // ---- Touch gestures: tap = show/hide controls, double-tap sides = ±10 s, horizontal swipe = scrub ----
  const SWIPE_RANGE = 120; // seconds covered by a swipe across the full player width
  const [scrub, setScrub] = useState<{ target: number; delta: number } | null>(null);
  const gestureRef = useRef<{ id: number; x: number; y: number; startTime: number; mode: 'pending' | 'scrub' } | null>(null);
  const lastTapRef = useRef<{ t: number; side: 'back' | 'fwd' | 'mid' } | null>(null);
  const singleTapTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);

  const sideOf = (clientX: number): 'back' | 'fwd' | 'mid' => {
    const r = containerRef.current?.getBoundingClientRect();
    if (!r) return 'mid';
    const f = (clientX - r.left) / r.width;
    return f < 0.4 ? 'back' : f > 0.6 ? 'fwd' : 'mid';
  };

  const lastPointerTypeRef = useRef<string>('mouse');
  const onSurfacePointerDown = (e: React.PointerEvent<HTMLDivElement>) => {
    lastPointerTypeRef.current = e.pointerType;
    if (e.pointerType === 'mouse') return;
    gestureRef.current = { id: e.pointerId, x: e.clientX, y: e.clientY, startTime: videoRef.current?.currentTime ?? 0, mode: 'pending' };
  };

  const onSurfacePointerMove = (e: React.PointerEvent<HTMLDivElement>) => {
    const g = gestureRef.current;
    if (!g || g.id !== e.pointerId) return;
    const dx = e.clientX - g.x;
    const dy = e.clientY - g.y;
    if (g.mode === 'pending') {
      if (Math.abs(dx) > 14 && Math.abs(dx) > Math.abs(dy) * 1.2) {
        g.mode = 'scrub';
        e.currentTarget.setPointerCapture(e.pointerId);
        showControls();
      } else if (Math.abs(dy) > 14) {
        gestureRef.current = null; // vertical: let the page scroll
        return;
      } else return;
    }
    const width = containerRef.current?.getBoundingClientRect().width || 1;
    const d = videoRef.current?.duration || duration || 0;
    const range = d ? Math.min(SWIPE_RANGE, d) : SWIPE_RANGE;
    const target = Math.max(0, Math.min(d || Infinity, g.startTime + (dx / width) * range));
    setScrub({ target, delta: target - g.startTime });
  };

  const onSurfacePointerUp = (e: React.PointerEvent<HTMLDivElement>) => {
    const g = gestureRef.current;
    gestureRef.current = null;
    if (e.pointerType === 'mouse') return;
    if (g?.mode === 'scrub') {
      if (scrub) seekTo(scrub.target);
      setScrub(null);
      showControls();
      return;
    }
    if (!g) return;
    // Tap handling
    const side = sideOf(e.clientX);
    const now = Date.now();
    const last = lastTapRef.current;
    const inSeekRun = seekFlash && side !== 'mid' && seekFlash.side === side;
    if ((last && now - last.t < 300 && last.side === side && side !== 'mid') || inSeekRun) {
      if (singleTapTimerRef.current) clearTimeout(singleTapTimerRef.current);
      lastTapRef.current = null;
      setControlsVisible(false);
      seekBy(side === 'back' ? -10 : 10, true);
      return;
    }
    lastTapRef.current = { t: now, side };
    if (singleTapTimerRef.current) clearTimeout(singleTapTimerRef.current);
    singleTapTimerRef.current = setTimeout(() => {
      if (controlsVisible && isPlaying) setControlsVisible(false);
      else showControls();
    }, 260);
  };

  const onSurfacePointerCancel = () => {
    gestureRef.current = null;
    setScrub(null);
  };

  // ---- Seek bar (pointer driven so it works for mouse and touch) ----
  const barRef = useRef<HTMLDivElement | null>(null);
  const [barDrag, setBarDrag] = useState<number | null>(null);
  const [barHover, setBarHover] = useState<number | null>(null);
  const timeAtBar = (clientX: number) => {
    const r = barRef.current?.getBoundingClientRect();
    if (!r || !duration) return 0;
    return Math.max(0, Math.min(duration, ((clientX - r.left) / r.width) * duration));
  };
  const onBarDown = (e: React.PointerEvent<HTMLDivElement>) => {
    e.stopPropagation();
    e.currentTarget.setPointerCapture(e.pointerId);
    setBarDrag(timeAtBar(e.clientX));
    showControls();
  };
  const onBarMove = (e: React.PointerEvent<HTMLDivElement>) => {
    if (barDrag !== null) setBarDrag(timeAtBar(e.clientX));
    else if (e.pointerType === 'mouse') setBarHover(timeAtBar(e.clientX));
  };
  const onBarUp = (e: React.PointerEvent<HTMLDivElement>) => {
    if (barDrag === null) return;
    seekTo(timeAtBar(e.clientX));
    setBarDrag(null);
    showControls();
  };

  // Keyboard accessibility
  const handleKeyDown = (e: React.KeyboardEvent) => {
    if (['input', 'textarea', 'select'].includes((e.target as HTMLElement).tagName.toLowerCase())) return;
    showControls();
    switch (e.key.toLowerCase()) {
      case ' ':
      case 'k':
        e.preventDefault();
        togglePlay();
        break;
      case 'arrowleft':
      case 'j':
        e.preventDefault();
        seekBy(-10);
        break;
      case 'arrowright':
      case 'l':
        e.preventDefault();
        seekBy(10);
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

  const renditionLabel = (rend: VideoRecord) => {
    const lang = rend.languages && rend.languages.length > 0 ? rend.languages.join(' & ') : 'Original';
    return rend.version === 'dubbed' ? `${lang} Dubbed` : `${lang} Subtitles`;
  };

  const shownTime = barDrag ?? scrub?.target ?? currentTime;
  const pct = (t: number) => (duration > 0 ? Math.min(100, (t / duration) * 100) : 0);
  const idle = isPlaying && !controlsVisible && !showSettingsMenu && barDrag === null && !scrub;
  const blocked = !!errorState || showResumePrompt || countdown !== null;

  return (
    <div
      ref={containerRef}
      tabIndex={0}
      data-video-id={currentVideo.id}
      data-stream-url={streamUrl}
      onKeyDown={handleKeyDown}
      onMouseMove={showControls}
      className={`wp gn-player${isPlaying ? '' : ' paused'}${idle ? ' idle' : ''}`}
      aria-label={`Video player for ${currentVideo.title || episodeGroup.display_label}`}
    >
      <video
        ref={videoRef}
        src={streamUrl}
        poster={currentVideo.thumbnail_urls?.[0]}
        playsInline
        preload="metadata"
        onTimeUpdate={handleTimeUpdate}
        onProgress={handleProgress}
        onLoadedMetadata={handleLoadedMetadata}
        onEnded={handleEnded}
        onWaiting={() => setIsLoading(true)}
        onPlaying={() => { setIsLoading(false); setIsPlaying(true); }}
        onPause={() => setIsPlaying(false)}
        onError={() => {
          setIsLoading(false);
          setErrorState('The media source encountered a playback error or network block.');
        }}
        className="gn-video"
      />

      {/* Gesture surface: mouse click = play/pause, double-click = fullscreen; touch gestures above */}
      <div
        className="gn-surface"
        onClick={() => { if (lastPointerTypeRef.current === 'mouse' && !blocked) { togglePlay(); showControls(); } }}
        onDoubleClick={() => { if (lastPointerTypeRef.current === 'mouse' && !blocked) toggleFullscreen(); }}
        onPointerDown={onSurfacePointerDown}
        onPointerMove={onSurfacePointerMove}
        onPointerUp={onSurfacePointerUp}
        onPointerCancel={onSurfacePointerCancel}
      />

      {/* Double-tap / key seek feedback */}
      {seekFlash && (
        <div key={seekFlash.key} className={`gn-seekflash ${seekFlash.side}`} aria-live="polite">
          {seekFlash.side === 'back' ? <RotateCcw className="i" /> : <RotateCw className="i" />}
          <b>{seekFlash.side === 'back' ? '−' : '+'}{seekFlash.amount}s</b>
        </div>
      )}

      {/* Swipe scrub preview */}
      {scrub && (
        <div className="gn-scrub" aria-live="polite">
          <b>{scrub.delta >= 0 ? '+' : '−'}{formatTime(Math.abs(scrub.delta))}</b>
          <span>{formatTime(scrub.target)} / {formatTime(duration)}</span>
        </div>
      )}

      {/* Loading Spinner */}
      {isLoading && !errorState && (
        <div className="gn-loading" aria-hidden="true"><span /></div>
      )}

      {/* Big centre controls: play/pause with ±10 s (touch-friendly) */}
      {!blocked && (
        <div className={`gn-center${(controlsVisible || !isPlaying) && !scrub && !seekFlash?.gesture ? ' on' : ''}`}>
          <button className="gn-c-skip" onClick={() => { seekBy(-10); showControls(); }} aria-label="Back 10 seconds">
            <RotateCcw className="i" /><small>10</small>
          </button>
          <button className="gn-c-play" onClick={() => { togglePlay(); showControls(); }} aria-label={isPlaying ? 'Pause' : 'Play'}>
            {isPlaying ? <Pause className="i f" /> : <Play className="i f" />}
          </button>
          <button className="gn-c-skip" onClick={() => { seekBy(10); showControls(); }} aria-label="Forward 10 seconds">
            <RotateCw className="i" /><small>10</small>
          </button>
        </div>
      )}

      {/* Resume Overlay */}
      {showResumePrompt && (
        <div className="gn-dlg-wrap">
          <div className="gn-dlg">
            <h3>Resume watching?</h3>
            <p>You stopped at <b>{formatTime(resumeTimeTarget)}</b>.</p>
            <div className="gn-dlg-acts">
              <button className="btn btn-play" onClick={() => handleResumeChoice(true)}>Resume ({formatTime(resumeTimeTarget)})</button>
              <button className="btn btn-ghost" onClick={() => handleResumeChoice(false)}>Start Over</button>
            </div>
          </div>
        </div>
      )}

      {/* Autoplay Next Episode */}
      {countdown !== null && nextEpisodeGroup && onNavigateNext && (
        <div className="gn-dlg-wrap">
          <div className="gn-dlg">
            <small className="gn-kick">Up next</small>
            <h3>{nextEpisodeGroup.display_label}</h3>
            <p>Starting in <b>{countdown}s</b></p>
            <div className="gn-dlg-acts">
              <button className="btn btn-play" onClick={onNavigateNext}>Play now <ArrowRight className="i" /></button>
              <button className="btn btn-ghost" onClick={cancelAutoplay}>Cancel</button>
            </div>
          </div>
        </div>
      )}

      {/* Error Fallback State */}
      {errorState && (
        <div className="gn-dlg-wrap solid">
          <div className="gn-dlg">
            <AlertCircle className="gn-dlg-icon" />
            <h3>Stream Playback Notice</h3>
            <p>{errorState}</p>
            <div className="gn-dlg-acts">
              <button
                className="btn btn-play"
                onClick={() => {
                  setErrorState(null);
                  setIsLoading(true);
                  if (hlsRef.current) hlsRef.current.startLoad();
                }}
              >
                Retry Stream
              </button>
              <button className="btn btn-ghost" onClick={copyDiagnosticInfo}>
                {copiedDiagnostic ? <Check className="i" /> : <Copy className="i" />}
                {copiedDiagnostic ? 'Copied' : 'Copy Diagnostics'}
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Controls */}
      <div className="wp-ui">
        <div className="wp-top">
          <b>{dramaTitle}</b>
          <span>{episodeGroup.display_label}</span>
          {allRenditions.length > 1 && <span className="gn-ver">{renditionLabel(currentVideo)}</span>}
        </div>

        <div className="wp-bottom">
          <div
            ref={barRef}
            className={`wp-bar${barDrag !== null ? ' drag' : ''}`}
            role="slider"
            tabIndex={0}
            aria-label="Seek video position"
            aria-valuemin={0}
            aria-valuemax={Math.round(duration)}
            aria-valuenow={Math.round(shownTime)}
            aria-valuetext={`${formatTime(shownTime)} of ${formatTime(duration)}`}
            onPointerDown={onBarDown}
            onPointerMove={onBarMove}
            onPointerUp={onBarUp}
            onPointerCancel={() => setBarDrag(null)}
            onPointerLeave={() => setBarHover(null)}
          >
            <div className="wp-track">
              <i className="buf" style={{ width: `${pct(buffered)}%` }} />
              <i className="pl" style={{ width: `${pct(shownTime)}%` }} />
              <span className="knob" style={{ left: `${pct(shownTime)}%` }} />
            </div>
            {(barDrag ?? barHover) !== null && (
              <div className="wp-tip gn-tip" style={{ left: `${pct((barDrag ?? barHover) as number)}%` }}>
                <span>{formatTime((barDrag ?? barHover) as number)}</span>
              </div>
            )}
          </div>

          <div className="wp-ctrl">
            <button className="icon-btn" onClick={togglePlay} aria-label={isPlaying ? 'Pause' : 'Play'}>
              {isPlaying ? <Pause className="i f" /> : <Play className="i f" />}
            </button>
            <button className="icon-btn gn-skip" onClick={() => seekBy(-10)} aria-label="Rewind 10 seconds">
              <RotateCcw className="i" /><small>10</small>
            </button>
            <button className="icon-btn gn-skip" onClick={() => seekBy(10)} aria-label="Forward 10 seconds">
              <RotateCw className="i" /><small>10</small>
            </button>
            <div className="vol">
              <button className="icon-btn" onClick={toggleMute} aria-label={isMuted ? 'Unmute' : 'Mute'}>
                {isMuted || volume === 0 ? <VolumeX className="i" /> : <Volume2 className="i" />}
              </button>
              <input
                type="range"
                min={0}
                max={1}
                step={0.05}
                value={isMuted ? 0 : volume}
                onChange={handleVolumeChange}
                aria-label="Volume slider"
              />
            </div>
            <span className="wp-time">
              {formatTime(shownTime)} <span>/ {formatTime(duration)}</span>
            </span>
            <span className="grow" />
            {nextEpisodeGroup && onNavigateNext && (
              <button className="icon-btn gn-hide-sm" onClick={onNavigateNext} aria-label="Next episode">
                <SkipForward className="i" />
              </button>
            )}
            <button
              className={`icon-btn${showSettingsMenu ? ' on' : ''}`}
              onClick={() => setShowSettingsMenu(!showSettingsMenu)}
              aria-label="Settings"
              aria-expanded={showSettingsMenu}
            >
              <Settings className="i" />
            </button>
            <button className="icon-btn gn-hide-sm" onClick={togglePiP} aria-label="Picture in Picture">
              <PictureInPicture2 className="i" />
            </button>
            <button className="icon-btn" onClick={toggleFullscreen} aria-label={isFullscreen ? 'Exit Fullscreen' : 'Enter Fullscreen'}>
              {isFullscreen ? <Minimize className="i" /> : <Maximize className="i" />}
            </button>
          </div>
        </div>
      </div>

      {/* Settings menu */}
      <div className={`wp-menu gn-menu${showSettingsMenu ? ' open' : ''}`} role="dialog" aria-label="Player settings">
        {qualityLevels.length > 0 && (
          <>
            <h6>Quality</h6>
            <div className="seg2">
              <button className={currentQualityIndex === -1 ? 'on' : ''} onClick={() => handleQualitySelect(-1)}>Auto</button>
              {qualityLevels.map((ql) => (
                <button key={ql.id} className={currentQualityIndex === ql.id ? 'on' : ''} onClick={() => handleQualitySelect(ql.id)}>
                  {ql.label}
                </button>
              ))}
            </div>
          </>
        )}
        <h6>Speed</h6>
        <div className="seg2">
          {[0.75, 1, 1.25, 1.5, 2].map((speed) => (
            <button key={speed} className={playbackSpeed === speed ? 'on' : ''} onClick={() => handleSpeedChange(speed)}>
              {speed}×
            </button>
          ))}
        </div>
      </div>
    </div>
  );
}
