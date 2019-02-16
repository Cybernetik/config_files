echo off
:start
set /p url="url : "
set /p quality="quality : "
youtube-dl.exe -f %quality% --ffmpeg-location "C:\bin" --output "D:\Video\%%(title)s.%%(ext)s" %url%
GOTO start