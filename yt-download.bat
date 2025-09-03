@echo off
setlocal

REM YouTube Audio Downloader for Windows
REM Usage: yt-download.bat "youtube_url" [output_directory]

if "%~1"=="" (
    echo Usage: yt-download.bat "youtube_url" [output_directory]
    echo Example: yt-download.bat "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
    exit /b 1
)

set "URL=%~1"
set "OUTPUT_DIR=%~2"

if "%OUTPUT_DIR%"=="" (
    set "OUTPUT_DIR=."
)

REM Run the Python script
python youtube_downloader.py "%URL%" "%OUTPUT_DIR%"

if %errorlevel% neq 0 (
    echo Error: Failed to download audio. Make sure Python and yt-dlp are installed.
    pause
    exit /b 1
)

echo Download completed successfully!
pause