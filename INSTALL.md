# OpenClaw Installation & Setup Guide

Since the `openclaw` command is not recognized, you need to install the framework first. Follow these steps to get **CompetitorClaw** running.

## 1. Prerequisites (Required)
- **Node.js**: Ensure you have Node.js (v20+) installed. [Download here](https://nodejs.org/).
- **Terminal**: Use PowerShell (pwsh) or WSL2 (recommended for Linux-like behavior).

## 2. Install OpenClaw CLI
Run the following command in your terminal to install the global package:
```powershell
npm install -g openclaw@latest
```

## 3. Framework Onboarding
Once installed, you must initialize the framework and set up your communication channels (where you'll receive the reports):
```powershell
openclaw onboard --install-daemon
```
> [!IMPORTANT]
> The `--install-daemon` flag ensures the OpenClaw Gateway runs in the background even after you close your terminal.

## 4. Setting up CompetitorClaw
Navigate to your project directory and initialize the workspace for this agent:
```powershell
cd f:\buisness_rival
openclaw init .
```
This will allow the framework to recognize the `openclaw.json` and skills you already have in this folder.

## 5. Deployment & Execution
Start the agent in daemon mode:
```powershell
openclaw start --agent competitor-monitor --daemon
```

## 6. Recommended VPS (for 24/7 Monitoring)
If you want the agent to run reliably every Sunday night without your PC being on, we recommend a small Linux VPS:
- **Provider**: DigitalOcean (Basic Droplet) or Hetzner.
- **Spec**: 1 vCPU, 2GB RAM is more than enough.
- **Setup**: Install Node.js, clone your `buisness_rival` repo, and follow the same install steps above.

---
### Messaging Tokens (Environment Variables)
For the agent to send alerts, set these variables in your system or a `.env` file:
- `TELEGRAM_BOT_TOKEN`: From @BotFather.
- `TELEGRAM_CHAT_ID`: Your personal or group chat ID.
