# Security Rules

- **Access Level**: Public data only.
- **Login**: Do not attempt to log in to any platform.
- **Rate-Limiting**: Wait at least 5 seconds between visits to the same domain.
- **Scraping**: Be resilient to layout changes. If scraping fails, log the error and use the last known good snapshot.
- **Tools**: Only use `browser`, `web_fetch`, `echo`, and `memory` tools. Do not execute shell commands or run arbitrary code.
- **Privacy**: Do not store any PII (Personally Identifiable Information) about the business owner.
- **Ethical Monitoring**: Only monitor public competitor pages
