echo off
:start
set /p url="url : "
yt-dlp.exe -x --ffmpeg-location "C:\bin" --output "D:\song\%%(title)s.%%(ext)s" %url%
GOTO start

REM --extract-audio --audio-quality X --audio-format mp3