---
name: add_or_update_competitor
description: Registers or updates a competitor's business profile and URLs in the persistent memory.
metadata:
  version: 1.0.0
---

# Instructions
1. Parse the user's input to extract:
   - `competitor_name` (e.g., "Pioneer Coaching")
   - `google_maps_url` (optional)
   - `justdial_url` (optional)
   - `sulekha_url` (optional)
   - `website_url` (optional)
   - `social_media_urls` (optional, list of FB/IG)
2. Use `memory_read` to check if the competitor already exists.
3. If the competitor exists, update only the provided fields.
4. If the competitor is new, create a full profile with a `last_snapshot_date` of today and an empty history.
5. Save the updated profile to `memory/competitors/{competitor_name}.json`.
6. Confirm the addition/update to the user with a concise summary.

# Reasoning
- This skill ensures that all future scans have a target.
- By storing the URLs, subsequent monitor skills can simply look up the memory.
- It provides a "khata" (ledger) of who we are tracking.

# Error Handling
- If no name is provided, ask the user for it.
- If URLs are invalid, log a warning but save what you can.
- If the memory write fails, echo a retry message.
