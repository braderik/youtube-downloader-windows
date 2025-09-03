YouTube Audio Downloader - Windows Setup
=========================================

WHAT'S INCLUDED:
- youtube_downloader.py  (Main Python script)
- yt-download.bat        (Windows batch file for easy use)
- setup-windows.bat      (Setup script)
- requirements.txt       (Python dependencies)

SETUP INSTRUCTIONS:
1. Make sure Python is installed on Windows
   - Download from https://python.org
   - IMPORTANT: Check "Add Python to PATH" during installation

2. Run setup-windows.bat as Administrator (right-click -> "Run as administrator")
   - This will install the required yt-dlp package

USAGE:
Double-click yt-download.bat or use from Command Prompt:

Basic usage:
  yt-download.bat "https://www.youtube.com/watch?v=VIDEO_ID"

Download to specific folder:
  yt-download.bat "https://www.youtube.com/watch?v=VIDEO_ID" "C:\Music\Downloads"

NOTES:
- Always put URLs in quotes
- MP3 files will be saved with the video title as filename
- Script automatically downloads single videos only (not playlists)
- Quality is set to 192kbps MP3

TROUBLESHOOTING:
- If "python is not recognized": Python isn't in PATH, reinstall Python with PATH option
- If yt-dlp errors: Run setup-windows.bat again
- If download fails: Check internet connection and URL validity