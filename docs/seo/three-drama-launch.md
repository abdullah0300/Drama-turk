# Three-drama launch

4 October 2026: kept `mehmed-fetihler-sultani`, `ask-ve-taht` and `alparslan-buyuk-selcuklu` published. Changed the other 22 drama records to the existing `hidden` status. Child seasons, episodes, streams and editorial content were preserved; changing a drama back to published restores its existing catalog.

Public directory, homepage, related dramas, notifications and both sitemaps use the visible drama inventory. Added the same published/preview filter to direct drama lookup so hidden main pages and their nested season/episode routes become unavailable. Extended the existing authenticated admin publication API to accept hidden, and invalidate both sitemaps when drama publication changes. No coming-soon placeholders were added.

Original drama IDs and statuses are saved locally in `artifacts/seo-ai/three-drama-launch/before.json`. Database readback confirmed the only visible IDs are the three above. Deployment remains with the owner; the new direct-route protection requires deploying the code. Existing public catalog caches can take 60 seconds, sitemap/CDN caches about 300 seconds, to refresh after a direct database change. Search engines can retain older indexed URLs until recrawling.

Verification: production build and TypeScript checks passed. Homepage, browse page, sitemap and video sitemap exposed only the three approved drama IDs. All three main pages returned 200. Representative hidden drama, season and episode routes returned 404. Results saved in `artifacts/seo-ai/three-drama-launch/verification.json`.
