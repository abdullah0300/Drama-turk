'use client';

import React, { useState, useRef, useEffect, useMemo } from 'react';
import { Search, ChevronDown, Check, X, Film } from 'lucide-react';
import { DramaOption } from './AdminDashboardClient';

interface SearchableDramaSelectProps {
  label?: string;
  slotNumber: number;
  slotTitle: string;
  slotBadge?: string;
  options: DramaOption[];
  value: string;
  onChange: (value: string) => void;
  disabled?: boolean;
}

export function SearchableDramaSelect({
  label,
  slotNumber,
  slotTitle,
  slotBadge,
  options,
  value,
  onChange,
  disabled = false,
}: SearchableDramaSelectProps) {
  const [isOpen, setIsOpen] = useState(false);
  const [searchTerm, setSearchTerm] = useState('');
  const dropdownRef = useRef<HTMLDivElement>(null);
  const searchInputRef = useRef<HTMLInputElement>(null);

  // Currently selected drama object
  const selectedOption = useMemo(
    () => options.find((opt) => opt.source_id === value),
    [options, value]
  );

  // Filter options based on search input
  const filteredOptions = useMemo(() => {
    if (!searchTerm.trim()) return options;
    const term = searchTerm.toLowerCase().trim();
    return options.filter(
      (opt) =>
        opt.display_name.toLowerCase().includes(term) ||
        opt.source_id.toLowerCase().includes(term) ||
        (opt.genres && opt.genres.some((g) => g.toLowerCase().includes(term)))
    );
  }, [options, searchTerm]);

  // Handle outside click to close dropdown
  useEffect(() => {
    function handleClickOutside(event: MouseEvent) {
      if (dropdownRef.current && !dropdownRef.current.contains(event.target as Node)) {
        setIsOpen(false);
      }
    }
    if (isOpen) {
      document.addEventListener('mousedown', handleClickOutside);
    }
    return () => {
      document.removeEventListener('mousedown', handleClickOutside);
    };
  }, [isOpen]);

  // Focus search input when dropdown opens
  useEffect(() => {
    if (isOpen && searchInputRef.current) {
      searchInputRef.current.focus();
    }
  }, [isOpen]);

  const handleSelect = (sourceId: string) => {
    onChange(sourceId);
    setIsOpen(false);
    setSearchTerm('');
  };

  return (
    <div className="space-y-1.5" ref={dropdownRef}>
      <div className="flex items-center justify-between">
        <label className="text-[11px] font-semibold text-text-secondary flex items-center gap-1.5">
          <span className="flex items-center justify-center w-4 h-4 rounded-full bg-amber-500/20 text-amber-400 text-[10px] font-mono font-bold">
            {slotNumber}
          </span>
          <span>{slotTitle}</span>
        </label>
        {slotBadge && (
          <span className="text-[10px] font-mono px-1.5 py-0.5 rounded bg-surface-border text-text-tertiary">
            {slotBadge}
          </span>
        )}
      </div>

      <div className="relative">
        {/* Dropdown trigger button */}
        <button
          type="button"
          onClick={() => !disabled && setIsOpen((prev) => !prev)}
          disabled={disabled}
          className={`w-full flex items-center justify-between gap-2 px-3 py-2 rounded-xl bg-stone-900 border text-left transition-all ${
            isOpen
              ? 'border-amber-400 ring-2 ring-amber-400/20 shadow-lg shadow-black/40'
              : 'border-surface-border hover:border-surface-border-strong hover:bg-stone-850'
          } ${disabled ? 'opacity-50 cursor-not-allowed' : 'cursor-pointer'}`}
        >
          <div className="flex items-center gap-2.5 min-w-0">
            {/* Poster Thumbnail */}
            <div className="w-7 h-9 rounded bg-stone-800 border border-surface-border overflow-hidden shrink-0 flex items-center justify-center">
              {selectedOption?.poster_url ? (
                <img
                  src={selectedOption.poster_url}
                  alt={selectedOption.display_name}
                  className="w-full h-full object-cover"
                />
              ) : (
                <Film size={12} className="text-text-muted" />
              )}
            </div>

            <div className="min-w-0">
              <p className="text-xs font-semibold text-text-primary truncate">
                {selectedOption?.display_name || value || 'Select series...'}
              </p>
              <p className="text-[10px] text-text-tertiary font-mono truncate">
                {selectedOption?.source_id || value}
              </p>
            </div>
          </div>

          <ChevronDown
            size={14}
            className={`text-text-tertiary shrink-0 transition-transform duration-200 ${
              isOpen ? 'rotate-180 text-amber-400' : ''
            }`}
          />
        </button>

        {/* Dropdown Popover */}
        {isOpen && (
          <div className="absolute z-50 left-0 right-0 mt-1.5 rounded-xl bg-stone-900 border border-surface-border shadow-2xl shadow-black/80 backdrop-blur-md overflow-hidden animate-in fade-in zoom-in-95 duration-100">
            {/* Search Input Field */}
            <div className="p-2 border-b border-surface-border/80 bg-stone-950/60 sticky top-0 z-10">
              <div className="relative flex items-center">
                <Search size={13} className="absolute left-2.5 text-text-tertiary" />
                <input
                  ref={searchInputRef}
                  type="text"
                  value={searchTerm}
                  onChange={(e) => setSearchTerm(e.target.value)}
                  placeholder="Search series by title or slug..."
                  className="w-full bg-stone-900 border border-surface-border/70 rounded-lg pl-8 pr-7 py-1.5 text-xs text-text-primary placeholder:text-text-muted focus:outline-none focus:border-amber-400 focus:ring-1 focus:ring-amber-400/30"
                  onKeyDown={(e) => {
                    if (e.key === 'Escape') setIsOpen(false);
                  }}
                />
                {searchTerm && (
                  <button
                    type="button"
                    onClick={() => setSearchTerm('')}
                    className="absolute right-2 text-text-muted hover:text-text-primary p-0.5"
                  >
                    <X size={12} />
                  </button>
                )}
              </div>
            </div>

            {/* Scrollable Series List */}
            <div className="max-h-60 overflow-y-auto divide-y divide-surface-border/40 scrollbar-thin scrollbar-thumb-stone-700 scrollbar-track-transparent">
              {filteredOptions.length === 0 ? (
                <div className="p-4 text-center text-xs text-text-muted">
                  No drama series matching &ldquo;{searchTerm}&rdquo;
                </div>
              ) : (
                filteredOptions.map((opt) => {
                  const isSelected = opt.source_id === value;
                  return (
                    <button
                      key={opt.source_id}
                      type="button"
                      onClick={() => handleSelect(opt.source_id)}
                      className={`w-full flex items-center justify-between gap-3 px-3 py-2 text-left transition-colors ${
                        isSelected
                          ? 'bg-amber-500/10 text-text-primary'
                          : 'hover:bg-stone-800/80 text-text-secondary hover:text-text-primary'
                      }`}
                    >
                      <div className="flex items-center gap-2.5 min-w-0">
                        {/* Thumbnail */}
                        <div className="w-7 h-9 rounded bg-stone-800 border border-surface-border overflow-hidden shrink-0 flex items-center justify-center">
                          {opt.poster_url ? (
                            <img
                              src={opt.poster_url}
                              alt={opt.display_name}
                              className="w-full h-full object-cover"
                            />
                          ) : (
                            <Film size={12} className="text-text-muted" />
                          )}
                        </div>

                        <div className="min-w-0">
                          <div className="flex items-center gap-1.5">
                            <span
                              className={`text-xs font-medium truncate ${
                                isSelected ? 'text-amber-400 font-semibold' : ''
                              }`}
                            >
                              {opt.display_name}
                            </span>
                            {opt.is_pilot && (
                              <span className="text-[9px] px-1 rounded bg-amber-500/20 text-amber-300 font-mono">
                                Flagship
                              </span>
                            )}
                          </div>
                          <div className="flex items-center gap-2 text-[10px] text-text-tertiary">
                            <span className="font-mono truncate">{opt.source_id}</span>
                            {opt.genres && opt.genres.length > 0 && (
                              <>
                                <span>•</span>
                                <span className="truncate">{opt.genres.slice(0, 2).join(', ')}</span>
                              </>
                            )}
                          </div>
                        </div>
                      </div>

                      {isSelected && (
                        <div className="w-5 h-5 rounded-full bg-amber-400 text-stone-950 flex items-center justify-center shrink-0">
                          <Check size={12} strokeWidth={3} />
                        </div>
                      )}
                    </button>
                  );
                })
              )}
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
