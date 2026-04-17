---
name: monitor_justdial_sulekha
description: Visits JustDial and Sulekha listings to extract current offers, ratings, and business status.
metadata:
  version: 1.0.0
---

# Instructions
1. For each competitor, look up their `justdial_url` and `sulekha_url`.
2. Visit each using the `browser`:
   - Identify the "Verified" badge status.
   - Look for specific text like "Festive Offer: 10% Off" or "Flat ₹500 discount".
   - Extract the current rating and number of reviews.
3. Compare these values with the initial `memory_read`.
4. If a "Free consultation" or "New contact number" is found, flag it as a change.
5. Save the snapshot.

# Reasoning
- JustDial is a major source of leads for coaching institutes and service providers in India.
- Sulekha remains a secondary but relevant source for larger coaching centers.
- Any change in "Verified" status or "Offer" text is a direct indicator of their marketing effort.

# Error Handling
- JustDial often redirects or presents a popup. The browser should wait for the popup and close it if possible, or extract whatever is visible behind it.
- If the page is unavailable, log "URL changed".
