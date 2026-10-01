# Great Nation — Premium Ad-Free Drama Streaming

A modern, ad-free streaming platform built with Next.js App Router, TypeScript, and Tailwind CSS with design tokens. Designed for authentic, uninterrupted drama viewing with adaptive HLS playback, client-side privacy preservation, and strict catalog data integrity.

---

## Brand & Design Direction

- **Brand Promise:** “Your drama. Without interruptions.”
- **Supporting Assurance:** “No ads. No pop-ups. Just watch.”
- **Palette Tokens:** Deep charcoal canvas (`#0c0e12`), elevated surfaces (`#1c212b`), warm ivory text (`#faf8f5`), restrained warm stone secondary text (`#aba59c`), and warm amber accent (`#f59e0b`).
- **Typography:**
  - Display titles: *Cinzel* / Serif display hierarchy.
  - UI typography: Refined sans-serif stack.
  - Urdu font: *Noto Nastaliq Urdu* / *Jameel Noori Nastaleeq* with responsive line height and `rtl` consideration.
- **Still Hero:** Featured still presentation avoids forced background video autoplay, saving mobile bandwidth while preserving immediate visual appeal.

---

## Verified Pilot Release

- **Pilot Drama:** *Mehmed: Fetihler Sultani* (`mehmed-fetihler-sultani`)
- **Pilot Collection:** *Season 2 — Urdu & English Subtitles* (`collection-68`)
- **Playable Scope:** All 36 episode groups (Episodes 1 through 49 / Bolum 149) with 68 verified video renditions.
- **Language Rendition Switching:** Directly switches between verified Urdu and English subtitle streams without resetting timestamps or conflating separate broadcast cuts.
- **Preview Catalog:** The remaining 23 dramas are accessible via structured catalog detail pages with authentic metadata, source collection groupings, and record counts. Unreleased episodes are honestly designated and prevented from false playback.

---

## Video Playback Engine

Implemented in `src/components/player/CustomVideoPlayer.tsx`:
- **Adaptive HLS Streaming:** Native HLS on Safari / iOS; `hls.js` on modern desktop and mobile browsers.
- **True Quality Renditions:** Dynamically extracts actual manifest rendition levels (e.g. 720p, 1080p, bitrate); never synthesizes fake resolution badges.
- **Accurate Seeking & Keyboard Accessibility:** Space / K (play/pause), Left/Right arrows (10s seek), M (mute/unmute), F (fullscreen).
- **Picture-in-Picture & Speed Control:** 0.75x, 1x, 1.25x, 1.5x, 2x.
- **Progress Preservation & Resume Prompt:** Periodic state persistence every 5 seconds to `localStorage`; detects past progress (>15s) and offers "Resume from [timestamp]" or "Start Over".
- **Opt-in Cancelable Autoplay:** Countdown overlay with explicit cancel button; respects browser autoplay restrictions.
- **Genuine Problem Reporting:** Watch page provides a "Report Problem" modal that copies full diagnostic JSON (video ID, stream URL, timestamp, browser user-agent) to the clipboard for real troubleshooting.

---

## Data Model & Repository Architecture

Implemented in `src/lib/repository/catalog-repository.ts`:
- **Independent Entity Separation:**
  1. `Drama`: Series metadata, aliases, artwork, and verified genres.
  2. `CatalogCollection`: Source catalog releases keeping dubbed and subtitled cuts separate.
  3. `EpisodeGroup`: Logical episode units within each collection.
  4. `VideoRecord`: Direct stream URLs, language renditions, and subtitle metadata.
  5. `OrganizationReviewRecord`: 61 uncertain records and 13 resolved records preserved from review results.
  6. `DuplicateStreamGroup`: 6 duplicate stream clusters tracked without silent deletion.
  7. `EditorialDraft`: Offline Gemma editorial drafts.
  8. `PlaybackCheckLog`: Separation between automated HEAD reachability and browser playback.

---

## Getting Started

### 1. Requirements
- Node.js >= 18.18.0 (Tested on Node v22.21.0)
- npm >= 9.0.0

### 2. Installation
```bash
npm install
```

### 3. Environment Variables
Copy `.env.example` to `.env.local`:
```bash
cp .env.example .env.local
```

Key environment configurations:
```ini
NEXT_PUBLIC_SITE_DOMAIN=http://localhost:3000
NEXT_PUBLIC_PILOT_DRAMA_ID=mehmed-fetihler-sultani
NEXT_PUBLIC_PILOT_COLLECTION_ID=collection-68
ADMIN_MODE=development
ADMIN_SECRET_KEY=your_secure_admin_key_for_production
```

### 4. Running the Catalog Importer
Validate and test the catalog data with Zod runtime schema verification:
```bash
# Dry run verification
npm run import-catalog -- --dry-run

# Active import generating receipt
npm run import-catalog

# Run repository integrity checks
npm run test-catalog
```

### 5. Running the Application
```bash
# Development mode
npm run dev

# Production build and run
npm run build
npm start
```
Visit `http://localhost:3000`.

---

## Offline Gemma Editorial Import

Offline Gemma generation runs as a local batch process. The platform ingests drafts matching `GemmaEditorialBatchSchema` without overwriting canonical video IDs:

```json
[
  {
    "id": "draft-mehmed-s2-ep17",
    "drama_id": "mehmed-fetihler-sultani",
    "collection_id": "collection-68",
    "episode_group_id": "collection-68-episode-17",
    "proposed_display_title": "The Strategic Crossroads",
    "short_description": "Sultan Mehmed accelerates his tactical preparations as envoys arrive...",
    "sections": [
      {
        "heading": "Historical Context & Envoys",
        "content": "As diplomatic tensions rise, Sultan Mehmed faces conflicting advice...",
        "is_spoiler": false
      },
      {
        "heading": "Decisive Confrontation (Spoilers)",
        "content": "A high-stakes clandestine encounter near the Bosphorus...",
        "is_spoiler": true
      }
    ],
    "generation_provenance": {
      "model": "Gemma 2 9B (Offline Local)",
      "timestamp": "2026-09-30T14:30:00Z"
    },
    "approval_status": "draft"
  }
]
```

To import drafts via the authenticated API:
```bash
curl -X POST http://localhost:3000/api/admin/drafts \
  -H "Authorization: Bearer <ADMIN_SECRET_KEY>"
```

---

## SEO & Structured Data

- **XML Sitemap:** Accessible at `/sitemap.xml` with canonical URLs for all published series and pilot collection episodes.
- **Google Video Sitemap:** Accessible at `/video-sitemap.xml` formatted with `<video:video>` elements referencing eligible playable pilot streams.
- **Structured Data (JSON-LD):**
  - Homepage: `schema.org/WebSite` with SearchAction.
  - Drama Detail: `schema.org/TVSeries` with genre, collection counts, and poster image.
  - Episode Watch: `schema.org/VideoObject` matching visible content with stream URL, thumbnail, and series hierarchy.
- **Duplicate Prevention:** Internal search and filter combinations specify `robots: { index: false, follow: true }` and canonical pointers.

---

## Admin Operations Console

Located at `/admin`:
- **Catalog Metrics:** 24 dramas, 63 collections, 2,902 episode groups, 3,269 video records, 3,268 active stream URLs.
- **Review Queue Inspector:** Filter between unresolved and resolved metadata items.
- **Duplicate Streams:** Review 6 preserved duplicate URL clusters.
- **Stream Reachability Health Check:** SSRF-protected HEAD requests with a 6-second timeout.
- **Authorization Guard:** Protected by `ADMIN_SECRET_KEY` header check (`Authorization: Bearer ...`).
