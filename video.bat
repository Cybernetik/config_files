echo off
:start
set /p url="url : "
yt-dlp.exe -F %url% -v
set /p quality="quality : "
if %quality% LEQ "best" GOTO best_choice
:classic_choice
yt-dlp.exe -f %quality% --ffmpeg-location "C:\bin" --output "D:\Video\%%(title)s.%%(ext)s" %url% -v
GOTO start
:best_choice
yt-dlp.exe -f bestvideo+bestaudio --ffmpeg-location "C:\bin" --output "D:\Video\%%(title)s.%%(ext)s" %url% -v
GOTO start


rem youtube-dl.exe -f %quality% --ffmpeg-location "C:\bin" --output "D:\Video\%%(title)s.%%(ext)s" %url%