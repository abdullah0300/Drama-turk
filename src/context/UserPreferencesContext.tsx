'use client';

import React, { createContext, useContext, useEffect, useState } from 'react';
import { MyListItem, UserPlaybackProgress } from '@/types/catalog';

interface PreferencesState {
  autoplayNext: boolean;
  volume: number;
  muted: boolean;
}

interface UserPreferencesContextType {
  myList: MyListItem[];
  history: UserPlaybackProgress[];
  preferences: PreferencesState;
  addToMyList: (item: MyListItem) => void;
  removeFromMyList: (id: string) => void;
  isInMyList: (id: string) => boolean;
  saveProgress: (progress: UserPlaybackProgress) => void;
  getProgress: (videoId: string) => UserPlaybackProgress | undefined;
  removeHistoryItem: (videoId: string) => void;
  clearHistory: () => void;
  setAutoplayNext: (enabled: boolean) => void;
  setVolumePreference: (volume: number, muted: boolean) => void;
}

const UserPreferencesContext = createContext<UserPreferencesContextType | undefined>(undefined);

const MY_LIST_KEY = 'drama_platform_my_list_v1';
const HISTORY_KEY = 'drama_platform_history_v1';
const PREFS_KEY = 'drama_platform_prefs_v1';

export function UserPreferencesProvider({ children }: { children: React.ReactNode }) {
  const [myList, setMyList] = useState<MyListItem[]>([]);
  const [history, setHistory] = useState<UserPlaybackProgress[]>([]);
  const [preferences, setPreferences] = useState<PreferencesState>({
    autoplayNext: true,
    volume: 1,
    muted: false,
  });
  const [isLoaded, setIsLoaded] = useState(false);

  // Load from localStorage on mount
  useEffect(() => {
    try {
      if (typeof window !== 'undefined') {
        const storedList = localStorage.getItem(MY_LIST_KEY);
        if (storedList) setMyList(JSON.parse(storedList));

        const storedHistory = localStorage.getItem(HISTORY_KEY);
        if (storedHistory) setHistory(JSON.parse(storedHistory));

        const storedPrefs = localStorage.getItem(PREFS_KEY);
        if (storedPrefs) setPreferences(JSON.parse(storedPrefs));
      }
    } catch (e) {
      console.warn('Storage unavailable or blocked (e.g. private browsing mode):', e);
    } finally {
      setIsLoaded(true);
    }
  }, []);

  // Save changes to localStorage
  const saveMyListToStorage = (newList: MyListItem[]) => {
    setMyList(newList);
    try {
      localStorage.setItem(MY_LIST_KEY, JSON.stringify(newList));
    } catch (e) {
      console.warn('Failed to save to localStorage:', e);
    }
  };

  const saveHistoryToStorage = (newHistory: UserPlaybackProgress[]) => {
    setHistory(newHistory);
    try {
      localStorage.setItem(HISTORY_KEY, JSON.stringify(newHistory));
    } catch (e) {
      console.warn('Failed to save history to localStorage:', e);
    }
  };

  const addToMyList = (item: MyListItem) => {
    if (myList.some(i => i.id === item.id)) return;
    const updated = [item, ...myList];
    saveMyListToStorage(updated);
  };

  const removeFromMyList = (id: string) => {
    const updated = myList.filter(i => i.id !== id);
    saveMyListToStorage(updated);
  };

  const isInMyList = (id: string) => {
    return myList.some(i => i.id === id);
  };

  const saveProgress = (progress: UserPlaybackProgress) => {
    const existingIndex = history.findIndex(h => h.videoId === progress.videoId || h.episodeGroupId === progress.episodeGroupId);
    let updated: UserPlaybackProgress[];
    if (existingIndex >= 0) {
      updated = [...history];
      updated[existingIndex] = progress;
    } else {
      updated = [progress, ...history];
    }
    // Sort recent first, limit to 50
    updated = updated.sort((a, b) => b.updatedAt - a.updatedAt).slice(0, 50);
    saveHistoryToStorage(updated);
  };

  const getProgress = (videoId: string) => {
    const inState = history.find(h => h.videoId === videoId);
    if (inState) return inState;
    if (typeof window !== 'undefined') {
      try {
        const stored = localStorage.getItem(HISTORY_KEY);
        if (stored) {
          const parsed: UserPlaybackProgress[] = JSON.parse(stored);
          return parsed.find(h => h.videoId === videoId);
        }
      } catch {}
    }
    return undefined;
  };

  const removeHistoryItem = (videoId: string) => {
    const updated = history.filter(h => h.videoId !== videoId);
    saveHistoryToStorage(updated);
  };

  const clearHistory = () => {
    saveHistoryToStorage([]);
  };

  const setAutoplayNext = (enabled: boolean) => {
    const updated = { ...preferences, autoplayNext: enabled };
    setPreferences(updated);
    try {
      localStorage.setItem(PREFS_KEY, JSON.stringify(updated));
    } catch (e) {
      console.warn(e);
    }
  };

  const setVolumePreference = (volume: number, muted: boolean) => {
    const updated = { ...preferences, volume, muted };
    setPreferences(updated);
    try {
      localStorage.setItem(PREFS_KEY, JSON.stringify(updated));
    } catch (e) {
      console.warn(e);
    }
  };

  return (
    <UserPreferencesContext.Provider
      value={{
        myList,
        history,
        preferences,
        addToMyList,
        removeFromMyList,
        isInMyList,
        saveProgress,
        getProgress,
        removeHistoryItem,
        clearHistory,
        setAutoplayNext,
        setVolumePreference,
      }}
    >
      {children}
    </UserPreferencesContext.Provider>
  );
}

export function useUserPreferences() {
  const context = useContext(UserPreferencesContext);
  if (!context) {
    throw new Error('useUserPreferences must be used within a UserPreferencesProvider');
  }
  return context;
}
