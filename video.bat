echo off
:start
set /p url="url : "
yt-dlp.exe -F %url%
set /p quality="quality : "
yt-dlp.exe -f %quality% --ffmpeg-location "C:\bin" --output "D:\Video\%%(title)s.%%(ext)s" %url%
GOTO start


rem youtube-dl.exe -f %quality% --ffmpeg-location "C:\bin" --output "D:\Video\%%(title)s.%%(ext)s" %url%