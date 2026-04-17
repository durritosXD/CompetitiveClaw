---
name: monitor_social_media
description: Detects new public posts on Facebook/Instagram business pages and summarizes recent engagement or campaigns.
metadata:
  version: 1.0.0
---

# Instructions
1. For each competitor, look up the `social_media_urls`.
2. Use the `browser` to visit the social pages:
   - Identify the 3 most recent posts from the competitor's profile.
   - Extract the post text and date.
   - Look for keywords like "Admissions open", "New branch", "Celebration", "Special Discount", "Winner".
   - Note the number of likes/comments as a rough engagement marker.
3. Compare the current post list with `history.social` in the memory.
4. Flag "New post detected" or "Increased engagement this week".
5. Save the snapshot.

# Reasoning
- Facebook and Instagram are the primary awareness channels for Indian SMBs.
- Competitors often post their offers on social media before updating their website.
- Knowing what they are "promoting" tells the owner what the current market trend is.

# Error Handling
- If the page requires login, skip and log "Page hidden behind login/private".
- Social platforms have heavy anti-scraping. If the page doesn't load after 2 retries, mark "Social media scan failed".
- Do not attempt to log in or use credentials.
