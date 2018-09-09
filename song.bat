echo off
:start
set /p url="url : "
youtube-dl.exe -x --ffmpeg-location "C:\bin" --output "G:\song\%%(title)s.%%(ext)s" %url%
GOTO start

REM --extract-audio --audio-quality X --audio-format mp3