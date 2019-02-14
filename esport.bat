echo off
REM echo off prevents the display of commands in the terminal
REM Cmd window name
@title eSport stream
REM PATH_STREAMLINK="Your path to streamlink executable"
set PATH_STREAMLINK="C:\Program Files (x86)\Streamlink\bin\streamlink.exe"

:maude
echo "1 - YT with quality to define"
echo "2 - YT without quality to define"
echo "3 - TW with quality to define"
echo "4 - TW without quality to define"
set /p m="Choose mode :"
if "%m%"=="1" goto ytq
goto maude
:ytq

:boucle
REM A list of the channels you often watch to copy paste
echo "ESL        -> ESL_CSGO esl_france esl_csgo_fr esl_lol esl_lol_fr esl_dota2 esl_sc2"
echo "WEBTV FR   -> OgamingLoL OgamingLoL2"
echo "Player     -> rekkles"
echo "riotgames  -> riotgames lpl lpl2 lck riotgamesbrazil riotgamesturkish"
echo "Tournament -> ROFTV eswc dreamhackcs blizzard dotamajor ognesports"
set /p s="Enter a stream : "
echo "Can KO : 144p30 240p30 360p30 480p30 480p60 540p30 720p 720p30 720p60 1080p 1080p30 1080p60"
echo "OK : source high medium low mobile audio worst best"
set /p q="Enter a quality : "
echo "Stream -> %s% quality -> %q%"
start "stream %s% en %q%" %PATH_STREAMLINK% twitch.tv/%s% %q%
set /p EXIT="Launch another stream ? Type any key. Want leave ? Write exit :"
if "%EXIT%"=="exit" goto end
goto boucle
:end