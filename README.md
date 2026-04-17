# CompetitorClaw - Autonomous Competitor Intelligence for Indian SMBs

Welcome to **CompetitorClaw** (or "CompClaw"). This agent is designed to monitor your local competitors (coaching centers, cafes, or shops) and provide you with a weekly actionable brief.

## 🚀 One-Command Deployment
If you have OpenClaw installed, simply clone this repository into your workspace and run:
`openclaw start --agent competitor-monitor --daemon`

## 🛠️ User Onboarding Flow
To start tracking, message the agent on your chosen channel (WhatsApp/Telegram):

1. **Add Your Business**: "My business is Aruna Coaching, website arunacoaching.in"
2. **Add Competitors**: "Add competitor: Pioneer Classes, Google: https://www.google.com/maps/place/..., JustDial: https://www.justdial.com/..."
3. **Repeat for others**: "Add competitor: Success Point, Website: successpoint.edu"

## 📅 Automatic Schedule
The agent runs a full sweep **every Sunday at 11:00 PM IST**. You will receive your brief on Monday morning.

## 🧪 Testing Your Setup
You can trigger a manual sweep or check the status at any time:
- "Run competitor sweep now" (Force a manual monitor loop)
- "Show competitor list" (See who is being tracked)
- "Get latest brief" (Resend the last generated report)

## 🛡️ Best Practices
- **Public Data Only**: The agent does not require logins. It uses the `browser` tool for ethical scraping.
- **Resilient**: If a page layout changes, the agent is designed to log the error and use the last known good snapshot.
- **Indian SMB Focus**: Briefs use simple English with occasional local business terms for clarity.

## 📦 File Structure
- `openclaw.json`: Global channel and gating configuration.
- `AGENTS.md`: Registry of the agent.
- `SECURITY.md`: Rules for ethical and safe data collection.
- `agents/`: Contains the `SOUL.md` (personality) of the monitor.
- `skills/`: Individual capability modules (Google Reviews, JustDial, Pricing, Social, Analysis).
- `memory/`: Persistent storage for historical trends.
- `jobs.json`: Automation schedule.
