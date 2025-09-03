#!/usr/bin/env python3
"""
YouTube Audio Downloader
Downloads audio from YouTube videos and converts to MP3
"""

import os
import sys
from pathlib import Path
import yt_dlp


def download_youtube_audio(url, output_dir="."):
    """
    Download audio from YouTube video and save as MP3
    
    Args:
        url (str): YouTube video URL
        output_dir (str): Directory to save the MP3 file
    """
    
    # Create output directory if it doesn't exist
    Path(output_dir).mkdir(parents=True, exist_ok=True)
    
    # Configure yt-dlp options
    ydl_opts = {
        'format': 'bestaudio/best',
        'noplaylist': True,
        'postprocessors': [{
            'key': 'FFmpegExtractAudio',
            'preferredcodec': 'mp3',
            'preferredquality': '192',
        }],
        'outtmpl': os.path.join(output_dir, '%(title)s.%(ext)s'),
    }
    
    try:
        with yt_dlp.YoutubeDL(ydl_opts) as ydl:
            print(f"Downloading audio from: {url}")
            ydl.download([url])
            print("Download completed successfully!")
            
    except Exception as e:
        print(f"Error downloading audio: {str(e)}")
        return False
    
    return True


def main():
    if len(sys.argv) < 2:
        print("Usage: python youtube_downloader.py <youtube_url> [output_directory]")
        print("Example: python youtube_downloader.py 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'")
        sys.exit(1)
    
    url = sys.argv[1]
    output_dir = sys.argv[2] if len(sys.argv) > 2 else "."
    
    download_youtube_audio(url, output_dir)


if __name__ == "__main__":
    main()