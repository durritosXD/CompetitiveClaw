---
name: monitor_pricing_page
description: Visits a competitor's website pricing or contact page to extract current subscription/course fees and official offers.
metadata:
  version: 1.0.0
---

# Instructions
1. For each competitor, look up the `website_url`.
2. Use the `browser` to visit the URL:
   - Identify a "Pricing", "Rates", "Menu", "Packages", or "Admissions" page using the navigation menu.
   - Extract text content from the pricing section.
   - Look for specific price strings (e.g., "₹4,999", "700/hr", "50% Off").
   - Extract the full pricing table or text block if possible.
3. Compare the current pricing text with `history.pricing` in the memory.
4. Flag any "Price increase" or "Price decrease" or "New course added".
5. Save the snapshot.

# Reasoning
- Pricing is the most competitive factor in local Indian services.
- A competitor dropping their price is an immediate signal to the owner to adjust their marketing.

# Error Handling
- If the pricing is hidden behind a "Contact Us" or login form, report "Price not public".
- If the page is a PDF or an image, log "Price image detected" and provide a screenshot link.
