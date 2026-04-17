---
name: monitor_google_reviews
description: Uses the browser to visit Google Maps, extracts the latest reviews, and flags trends or new feedback.
metadata:
  version: 1.0.0
---

# Instructions
1. For each competitor, look up their `google_maps_url` from the memory.
2. If the URL is missing, skip and log a warning.
3. Use the `browser` tool to visit the URL:
   - Identify the "Reviews" tab or section.
   - Extract the 5 most recent reviews (stars, date, text).
   - Look for keywords like "waste of money", "great batch", "bad seating", "cheap price".
4. Compare with the `history.reviews` in the competitor's memory.
5. Identify "New" reviews that arrived since the `last_snapshot_date`.
6. Summarize the sentiment change (e.g., "Reviews went from 4.2 to 4.5 this week").
7. Save the new snapshot to `memory/competitors/{competitor_name}.json`.

# Reasoning
- Google Maps is the primary source of truth for Indian SMBs.
- Local customers trust these reviews the most.
- Detecting a surge in negative reviews for a competitor is an immediate opportunity for the owner.

# Error Handling
- If the browser is blocked (CAPTCHA), try `web_fetch` once. If still failing, mark "Page unreachable" and use last known data.
- If the layout changed, log a "Layout mismatch" for the developer and capture a screenshot.
