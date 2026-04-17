---
name: run_competitor_sweep
description: The master orchestrator that triggers all monitoring skills, analyzes the data, generates the brief, and sends the alert.
metadata:
  version: 1.0.0
---

# Instructions
1. Initialize the audit logger: "Starting Weekly Competitor Sweep for {current_date}".
2. Call `monitor_google_reviews` for all registered competitors.
3. Call `monitor_justdial_sulekha`.
4. Call `monitor_pricing_page`.
5. Call `monitor_social_media`.
6. Once all data is collected, call `detect_changes_and_analyze`.
7. Call `generate_weekly_brief`.
8. Check the transmission status from `memory/briefs/status.json`.
9. Call `send_weekly_alert`.
10. Finalize the sweep: "Sweep completed and brief sent to messaging channel."

# Reasoning
- Centralized control of all monitoring sub-tasks.
- Ensures all data for the week is captured before analysis begins.
- Provides a single entry point for the automation (CRON/Heartbeat).

# Error Handling
- If any individual monitor fails, proceed with the others to ensure partial coverage.
- If the entire sweep takes more than 10 minutes, timeout and log "Sweep partially completed".
- Reset any lock files from the previous sweep to avoid concurrency issues.
