---
name: detect_changes_and_analyze
description: Compares the current snapshots with the historical data in memory to identify meaningful trends and "Copy or Counter" opportunities.
metadata:
  version: 1.0.0
---

# Instructions
1. For each competitor, read the full history from `memory/competitors/{competitor_name}.json`.
2. Compare the `current_snapshot` with the `previous_snapshot`:
   - **Reviews**: Check for star rating change, total review count, and new keywords in recent reviews.
   - **Pricing**: Check for any numerical price change or new subscription terms.
   - **Offers**: Check for text changes in JustDial/Sulekha listings.
   - **Social**: Check for new posts or engagement spikes.
3. Use reasoning to identify "Copy or Counter" actions:
   - *Example*: "Competitor A has new negative reviews about 'cleanliness' -> ACTION: Counter by highlighting your 'hygienic and sanitized clinic' in social posts."
   - *Example*: "Competitor B dropped price for 'JEE Foundation' -> ACTION: Copy the discount or offer a 'Buy 1 Get 1 Course' to counter."
4. Save the analysis to `memory/analysis/{competitor_name}_weekly.json`.

# Reasoning
- The raw data is useless without context.
- This skill identifies the "why" and "so what" for the business owner.
- It transforms data points into business intelligence.

# Error Handling
- If no previous snapshot exists, mark this as "Initial baseline established".
- If data is identical, report "No significant changes detected this week".
- If memory read fails, assume no history and proceed with the current data only.
