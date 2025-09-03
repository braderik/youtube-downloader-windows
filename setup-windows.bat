@echo off
echo YouTube Audio Downloader Setup for Windows
echo ==========================================

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Python is not installed or not in PATH
    echo Please install Python from https://python.org
    echo Make sure to check "Add Python to PATH" during installation
    pause
    exit /b 1
)

echo Python found!
python --version

REM Install yt-dlp
echo Installing yt-dlp...
pip install yt-dlp>=2024.7.16

if %errorlevel% neq 0 (
    echo ERROR: Failed to install yt-dlp
    pause
    exit /b 1
)

echo.
echo Setup completed successfully!
echo.
echo Usage:
echo   yt-download.bat "youtube_url"
echo   yt-download.bat "youtube_url" "output_folder"
echo.
echo Examples:
echo   yt-download.bat "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
echo   yt-download.bat "https://www.youtube.com/watch?v=dQw4w9WgXcQ" "C:\Music"
echo.
pause