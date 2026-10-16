export type DownloadStatus = 'pending' | 'queued' | 'downloading' | 'completed' | 'paused' | 'failed';

export interface QualityOption {
  id: string;
  label: string;
  resolution?: string;
  height?: number;
  bandwidth?: number;
  url: string;
  estimatedSizeBytes?: number;
}

export interface OfflineEpisodeMetadata {
  episodeGroupId: string;
  dramaId: string;
  dramaTitle: string;
  seasonLabel: string;
  displayLabel: string;
  bolum: number | null;
  episodeNumber: number | null;
  stillUrl?: string;
  videoRecordId: string;
  manifestUrl: string;
  selectedQuality: string;
  selectedHeight?: number;
  totalChunks: number;
  downloadedChunks: number;
  totalSizeBytes: number;
  downloadedAt: string;
  status: DownloadStatus;
  error?: string;
  routePath: string;
}

export interface StorageInfo {
  usedBytes: number;
  quotaBytes: number;
  percentUsed: number;
}
