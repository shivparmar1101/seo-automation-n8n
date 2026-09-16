@echo off
echo ========================================
echo    Push to GitHub Script
echo ========================================
echo.

:: Check if git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Git is not installed!
    echo Please install Git from: https://git-scm.com
    pause
    exit /b 1
)

echo [SUCCESS] Git is installed!
echo.

:: Get GitHub username
set /p GITHUB_USERNAME="Enter your GitHub username: "
set /p REPO_NAME="Enter repository name (default: seo-automation-n8n): "

if "%REPO_NAME%"=="" set REPO_NAME=seo-automation-n8n

echo.
echo [INFO] Setting up Git repository...
echo.

:: Initialize git
git init

:: Add all files
git add .

:: Commit
git commit -m "Initial SEO automation setup with n8n"

:: Add remote
git remote add origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git

:: Push
git branch -M main
git push -u origin main

echo.
echo ========================================
echo    Success! Code pushed to GitHub.
echo ========================================
echo.
echo 📋 Next Steps:
echo    1. Go to https://railway.app
echo    2. Click "New Project"
echo    3. Select "Deploy from GitHub repo"
echo    4. Select your repository: %REPO_NAME%
echo    5. Add environment variables (see RAILWAY-DEPLOY.md)
echo    6. Your n8n will be live at Railway URL!
echo.
pause
