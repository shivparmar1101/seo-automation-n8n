# 🚀 Complete Setup Guide - SEO Automation

## Step 1: Install Docker (Windows)

### Download Docker Desktop
1. Go to: https://www.docker.com/products/docker-desktop/
2. Click "Download for Windows"
3. Run the installer
4. Follow installation wizard
5. **Restart your computer**

### Verify Docker Installation
Open PowerShell and run:
```powershell
docker --version
docker-compose --version
```

## Step 2: Get Free API Keys

### 1. Serper.dev (Keyword Tracking)
1. Go to: https://serper.dev
2. Sign up with Google/GitHub
3. Get API key (Free: 100 searches/month)

### 2. Google Sheets (Data Storage)
1. Go to: https://console.cloud.google.com
2. Create new project
3. Enable Google Sheets API
4. Create credentials (OAuth 2.0)
5. Download credentials.json

### 3. OpenAI (Content Generation)
1. Go to: https://platform.openai.com
2. Sign up/Login
3. Get API key ($5 free credit)

## Step 3: Setup n8n Locally

### Option A: Using Setup Script (Easiest)
1. Open PowerShell
2. Navigate to n8n-automation folder:
   ```powershell
   cd D:\xampp\htdocs\portfolio\n8n-automation
   ```
3. Run setup script:
   ```powershell
   .\setup.bat
   ```

### Option B: Manual Setup
1. Open PowerShell
2. Navigate to n8n-automation folder:
   ```powershell
   cd D:\xampp\htdocs\portfolio\n8n-automation
   ```
3. Copy .env.example to .env:
   ```powershell
   copy .env.example .env
   ```
4. Edit .env with your API keys:
   ```powershell
   notepad .env
   ```
5. Start services:
   ```powershell
   docker-compose up -d
   ```

## Step 4: Access n8n

1. Open browser: http://localhost:5678
2. Login:
   - Username: `admin`
   - Password: `shivparmar123`

## Step 5: Import Workflows

1. In n8n, click menu (☰) → "Import from File"
2. Import these files one by one:
   - `workflows/keyword-tracker.json`
   - `workflows/backlink-monitor.json`

## Step 6: Add Credentials

### Add Serper API Key
1. Go to Settings → Credentials
2. Click "New Credential"
3. Search "Header Auth"
4. Name: "Serper API"
5. Add header:
   - Name: `X-API-KEY`
   - Value: `your-serper-api-key`
6. Save

### Add Google Sheets
1. Go to Settings → Credentials
2. Click "New Credential"
3. Search "Google Sheets OAuth2"
4. Follow OAuth flow
5. Save

## Step 7: Activate Workflows

1. Open "SEO Keyword Tracker" workflow
2. Toggle "Active" switch (top right)
3. Open "Backlink Monitor" workflow
4. Toggle "Active" switch

## Step 8: Deploy to 24/7 Cloud (Railway)

### Fork Repository
1. Go to your GitHub repository
2. Click "Fork" to create your copy

### Deploy to Railway
1. Go to: https://railway.app
2. Sign in with GitHub
3. Click "New Project"
4. Select "Deploy from GitHub repo"
5. Select your forked repository
6. Railway will auto-detect Docker and deploy

### Set Environment Variables
1. In Railway dashboard, go to your service
2. Click "Variables" tab
3. Add all variables from .env file

## Step 9: Test Automation

### Test Keyword Tracker
1. In n8n, open "SEO Keyword Tracker"
2. Click "Execute Workflow"
3. Check Google Sheet for results

### Test Backlink Monitor
1. In n8n, open "Backlink Monitor"
2. Click "Execute Workflow"
3. Check email for report

## 🎉 Setup Complete!

Your SEO automation is now running 24/7!

### What's Automated:
- ✅ Daily keyword ranking tracking
- ✅ Weekly backlink monitoring
- ✅ Email reports
- ✅ Google Sheets updates

### Monitor Your Automation:
- n8n Dashboard: http://localhost:5678 (local)
- Railway Dashboard: https://railway.app (24/7)
- Google Sheets: Your spreadsheet URL

### Need Help?
- n8n Documentation: https://docs.n8n.io
- n8n Community: https://community.n8n.io
- Railway Docs: https://docs.railway.app
