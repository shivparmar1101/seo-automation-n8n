# SEO Automation with n8n

Automated SEO workflows for WordPress/Shopify developer portfolio.

## Features

- **Daily Keyword Tracking** - Track rankings for target keywords
- **Weekly Backlink Monitoring** - Monitor new and lost backlinks
- **Content Idea Generation** - AI-powered blog post ideas
- **Social Media Auto-post** - Automated LinkedIn/Twitter posts

## Free Hosting Options

### Option 1: Railway.app (Recommended - 24/7)

1. Fork this repository to your GitHub
2. Go to [railway.app](https://railway.app)
3. Sign in with GitHub
4. Click "New Project" → "Deploy from GitHub repo"
5. Select this repository
6. Railway will auto-detect Docker and deploy

### Option 2: Render.com (Free Tier)

1. Fork this repository
2. Go to [render.com](https://render.com)
3. Create new "Web Service"
4. Connect your GitHub repo
5. Use Docker runtime
6. Deploy

### Option 3: Oracle Cloud Free Tier (Always Free VPS)

1. Sign up at [cloud.oracle.com](https://cloud.oracle.com)
2. Create free VM instance
3. Install Docker
4. Clone this repo and run `docker-compose up -d`

## Local Development

### Prerequisites

- Docker Desktop installed
- Git installed

### Setup

```bash
# Clone repository
git clone https://github.com/yourusername/seo-automation-n8n.git
cd seo-automation-n8n

# Start services
docker-compose up -d

# Access n8n
open http://localhost:5678
```

## Environment Variables

Copy `.env.example` to `.env` and fill in:

```env
# Serper.dev API (Free: 100 searches/month)
SERPER_API_KEY=your-serper-api-key

# Google Sheets (OAuth2 credentials)
GOOGLE_SHEETS_CLIENT_ID=your-client-id
GOOGLE_SHEETS_CLIENT_SECRET=your-client-secret

# SMTP for email reports
SMTP_HOST=smtp.gmail.com
SMTP_PORT=587
SMTP_USER=your-email@gmail.com
SMTP_PASS=your-app-password
```

## API Keys (Free)

| Service | Free Tier | Sign Up |
|---------|-----------|---------|
| Serper.dev | 100 searches/month | [serper.dev](https://serper.dev) |
| Google Search Console | Unlimited | [search.google.com](https://search.google.com/webmasters) |
| Google Sheets | Unlimited | [sheets.google.com](https://sheets.google.com) |
| OpenAI | $5 free credit | [platform.openai.com](https://platform.openai.com) |

## Workflows

### 1. Keyword Tracker (Daily)

- Runs every day at 9 AM IST
- Tracks 6 target keywords
- Saves rankings to Google Sheets
- Alerts on significant changes

### 2. Backlink Monitor (Weekly)

- Runs every Monday at 9 AM IST
- Checks new and lost backlinks
- Sends email report
- Updates Google Sheets

### 3. Content Generator (Weekly)

- Generates blog post ideas
- Creates outlines with keywords
- Saves to Notion/Google Docs

## License

MIT License - Free to use and modify
