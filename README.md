# GenAI Edge – Landing Page

A responsive landing page for the **GenAI Edge: 24 Hrs to AI Fluency** program — a 3-day hands-on training that turns professionals into AI-fluent, automation-ready power users.

**Live site:** https://nanditavora.github.io/genai-edge/

---

## About the Program

GenAI Edge is a practical AI fluency program covering 13 real-world use cases across productivity, content creation, data analysis, and automation. Every session is a deployable skill usable the next morning.

**Program stats:** 3 Days · 12+ Use Cases · 24 Hours

---

## Project Structure

```
genai-edge/
├── index.html                        # Main landing page
├── styles.css                        # All styles (dark/light theme support)
├── script.js                         # Theme toggle + interactivity
├── assets/
│   ├── GenAI-Edge-Use-Case-Images/   # Use case card images (PNG)
│   └── Use_Case_Image_Prompt_Description.xlsx  # Image brief & tools reference
└── .github/
    └── workflows/
        └── static.yml                # GitHub Pages auto-deploy workflow
```

---

## Features

- **13 use-case cards** — each with an image, brief description, tools used, and session hours
- **Light / Dark theme toggle** — persisted via `localStorage`
- **Responsive layout** — works on mobile, tablet, and desktop
- **Smooth scroll & sticky navbar**
- **Auto-deploy to GitHub Pages** on every push to `main`

---

## Use Cases Covered

| # | Title | Tools |
|---|-------|-------|
| 1 | Inbox Zero in 90 Seconds | ChatGPT, Claude |
| 2 | The Meeting That Runs Itself | ChatGPT Voice, Whisper |
| 3 | Your Document on Speed | ChatGPT, NotebookLM |
| 4 | Your Data Analyst. No CV Required. | ChatGPT (ADA mode), Julius AI |
| 5 | You, On Camera. Without the Camera. | HeyGen Free, D-ID Free, Claude |
| 6 | Podcast-in-a-Box | ChatGPT, ElevenLabs Free, Canva, NotebookLM |
| 7 | One Campaign. Every Language. | ChatGPT, DeepL Free, Canva |
| 8 | The Idea Machine | ChatGPT, Claude |
| 9 | Your Personal Brand, Automated | ChatGPT, Canva, Buffer |
| 10 | Build It. No Code. | Bolt, Lovable, Cursor |
| 11 | Your AI Workforce | n8n, Make, Zapier |
| 12 | The Insight Engine | ChatGPT, Looker Studio |
| Bonus | The AI Agent | AutoGPT, AgentGPT |

---

## Getting Started (Local)

No build step required — it's plain HTML/CSS/JS.

```bash
# Clone the repo
git clone https://github.com/NanditaVora/genai-edge.git
cd genai-edge

# Open in browser
open index.html
```

---

## Deployment

The site auto-deploys to **GitHub Pages** via the workflow in `.github/workflows/static.yml` on every push to the `main` branch.

To deploy manually: go to **Actions → Deploy static content to Pages → Run workflow**.

---

## Tech Stack

- HTML5, CSS3, Vanilla JavaScript
- Google Fonts (Inter, Space Grotesk)
- GitHub Actions (CI/CD)
- GitHub Pages (hosting)
