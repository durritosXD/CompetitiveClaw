---
name: generate_weekly_brief
description: Formats the analysis results into a structured, action-oriented Markdown brief for the business owner.
metadata:
  version: 1.0.0
---

# Instructions
1. Read the combined reports from `memory/analysis/*.json`.
2. Structure the Markdown brief as follows:
   - **Header**: "🛡️ Competitor Intelligence Brief - {current_date}"
   - **Summary**: "What's changed this week?" (2-3 bullet points)
   - **Detailed Breakdown**: For each competitor:
     - **Status**: (New Reviews? Price Change? New Post?)
     - **Highlight**: (e.g., "5.0 star streak continued!")
     - **Recommendation**: (Copy or Counter action)
   - **Action Items**: "What should you do next?"
3. Use simple English and occasional keywords for clarity (e.g., "khata", "offer").
4. Ensure the brief is concise and fits in a messaging window (e.g., WhatsApp/Telegram).

# Reasoning
- The owner only cares about the conclusion.
- Markdown structure helps in easy reading and scanning.
- Action items make the report valuable and actionable.

# Error Handling
- If no changes are found, report "No noteworthy changes this week".
- If any competitor scan failed, add a "Warning: Scan failed for {competitor_name}".
- If the briefing fails to generate, output a baseline message.
