---
name: send_weekly_alert
description: Sends the generated weekly brief to the business owner via their designated messaging channel.
metadata:
  version: 1.0.0
---

# Instructions
1. Identify the default messaging channel from `openclaw.json` (e.g., Telegram).
2. Fetch the `telegram_token` and `chat_id` from environment variables `${TELEGRAM_BOT_TOKEN}` and `${TELEGRAM_CHAT_ID}`.
3. Read the formatted brief from `memory/briefs/weekly_brief_{current_date}.md`.
4. Use the `echo` tool to output the message, but in a production environment, this would call the OpenClaw messenger bridge:
   - "Sending weekly brief to Telegram chat {chat_id}..."
5. Mark the transmission status in the persistent memory under `history.alerts`.

# Reasoning
- The owner is mobile-first.
- This skill ensures the information reaches them where they already are.
- Persistence of transmission status helps in debugging and ensures no duplicate alerts.

# Error Handling
- If the transmission fails (e.g., bot blocked), log "Failed to send to Telegram".
- In case of failure, fallback to `echo` the brief to the OpenClaw terminal so the owner can view it if they login.
- Do not repeat alerts.
