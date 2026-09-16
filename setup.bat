@echo off
echo ========================================
echo    SEO Automation Setup Script
echo ========================================
echo.

:: Check if Docker is installed
docker --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Docker is not installed!
    echo.
    echo Please install Docker Desktop from:
    echo https://www.docker.com/products/docker-desktop/
    echo.
    echo After installation, restart your computer and run this script again.
    pause
    exit /b 1
)

echo [SUCCESS] Docker is installed!
echo.

:: Check if Docker is running
docker info >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Docker is not running!
    echo.
    echo Please start Docker Desktop and try again.
    pause
    exit /b 1
)

echo [SUCCESS] Docker is running!
echo.

:: Create .env file if it doesn't exist
if not exist .env (
    echo [INFO] Creating .env file from template...
    copy .env.example .env
    echo.
    echo [WARNING] Please edit .env file with your API keys!
    echo.
)

:: Start services
echo [INFO] Starting n8n services...
docker-compose up -d

echo.
echo ========================================
echo    Setup Complete!
echo ========================================
echo.
echo 🌐 Access n8n at: http://localhost:5678
echo.
echo 📋 Default Login:
echo    Username: admin
echo    Password: shivparmar123
echo.
echo 📝 Next Steps:
echo    1. Open http://localhost:5678
echo    2. Login with credentials above
echo    3. Import workflow JSON files from workflows/ folder
echo    4. Add your API keys in n8n credentials
echo    5. Activate workflows
echo.
echo 🔑 Get Free API Keys:
echo    - Serper.dev: https://serper.dev (100 searches/month)
echo    - Google Sheets: https://console.cloud.google.com
echo    - OpenAI: https://platform.openai.com ($5 free credit)
echo.
echo 📚 For 24/7 hosting, deploy to Railway.app:
echo    1. Fork this repo to GitHub
echo    2. Go to https://railway.app
echo    3. Sign in with GitHub
echo    4. Deploy from GitHub repo
echo.
pause
