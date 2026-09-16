# 🚀 Railway Deployment Guide

## Step-by-Step: Deploy n8n to Railway (24/7 Free Hosting)

### Step 1: Create GitHub Repository

1. Go to: https://github.com/new
2. Repository name: `seo-automation-n8n`
3. Select: **Public** (free tier works better)
4. Click: **Create repository**

### Step 2: Push Code to GitHub

Open PowerShell and run:

```powershell
# Navigate to project folder
cd D:\xampp\htdocs\portfolio\n8n-automation

# Initialize git
git init

# Add all files
git add .

# Commit
git commit -m "Initial SEO automation setup"

# Connect to GitHub (replace YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/seo-automation-n8n.git

# Push
git branch -M main
git push -u origin main
```

### Step 3: Deploy to Railway

1. Go to: https://railway.app
2. Click: **New Project**
3. Select: **Deploy from GitHub repo**
4. Select: `seo-automation-n8n` repository
5. Railway will auto-detect Dockerfile and deploy!

### Step 4: Add Environment Variables

In Railway dashboard:

1. Click on your service
2. Go to **Variables** tab
3. Add these variables:

```env
# n8n Settings
N8N_BASIC_AUTH_ACTIVE=true
N8N_BASIC_AUTH_USER=admin
N8N_BASIC_AUTH_PASSWORD=shivparmar123
GENERIC_TIMEZONE=Asia/Kolkata
TZ=Asia/Kolkata

# Database (Railway provides free PostgreSQL)
DB_TYPE=postgresdb
DB_POSTGRESDB_HOST=${PGHOST}
DB_POSTGRESDB_PORT=${PGPORT}
DB_POSTGRESDB_DATABASE=${PGDATABASE}
DB_POSTGRESDB_USER=${PGUSER}
DB_POSTGRESDB_PASSWORD=${PGPASSWORD}
```

### Step 5: Add PostgreSQL Database

1. In Railway dashboard, click **New**
2. Select **Database** → **PostgreSQL**
3. Railway will auto-generate database variables
4. These will auto-connect to your n8n service

### Step 6: Get Your n8n URL

1. In Railway dashboard, click on your service
2. Go to **Settings** tab
3. Under **Networking**, click **Generate Domain**
4. You'll get a URL like: `seo-automation.up.railway.app`

### Step 7: Access n8n

1. Open your Railway URL
2. Login:
   - Username: `admin`
   - Password: `shivparmar123`

### Step 8: Import Workflows

1. In n8n, click menu (☰)
2. Select **Import from File**
3. Import these files:
   - `workflows/keyword-tracker.json`
   - `workflows/backlink-monitor.json`

### Step 9: Add API Credentials

#### Serper API (Keyword Tracking)
1. Go to: https://serper.dev
2. Sign up (free: 100 searches/month)
3. Copy API key
4. In n8n: Settings → Credentials → New
5. Search "Header Auth"
6. Add: Name=`X-API-KEY`, Value=`your-serper-key`

#### Google Sheets
1. Go to: https://console.cloud.google.com
2. Create project → Enable Google Sheets API
3. Create OAuth 2.0 credentials
4. In n8n: Settings → Credentials → New
5. Search "Google Sheets OAuth2"
6. Follow OAuth flow

### Step 10: Activate Workflows

1. Open "SEO Keyword Tracker" workflow
2. Toggle **Active** switch (top right)
3. Open "Backlink Monitor" workflow
4. Toggle **Active** switch

---

## ✅ Verification

### Check if n8n is Running:
- Open your Railway URL
- You should see n8n login page
- Login works = Success!

### Check if Workflows Work:
1. In n8n, open "SEO Keyword Tracker"
2. Click **Execute Workflow**
3. Check if data appears in Google Sheets

---

## 🎉 Done!

Your SEO automation is now running **24/7** on Railway!

### What You Get:
- ✅ n8n running 24/7
- ✅ Daily keyword tracking
- ✅ Weekly backlink monitoring
- ✅ Email reports
- ✅ Google Sheets updates
- ✅ **FREE** hosting (500 hours/month)

---

## 🔧 Troubleshooting

### If n8n Won't Start:
1. Check Railway logs (Service → Deployments → View Logs)
2. Verify all environment variables are set
3. Ensure PostgreSQL is connected

### If Workflows Don't Run:
1. Check workflow is **Active** (toggle switch)
2. Verify API credentials are correct
3. Check Google Sheets connection

### Need Help?
- Railway Docs: https://docs.railway.app
- n8n Community: https://community.n8n.io
