echo off
REM echo off prevents the display of commands in the terminal
REM Cmd window name
@title eSport stream
REM PATH_STREAMLINK="Your path to streamlink executable"
set PATH_STREAMLINK="C:\Program Files (x86)\Streamlink\bin\streamlink.exe"
:boucle
REM A list of the channels you often watch to copy paste
echo "ESL        -> ESL_CSGO esl_france esl_csgo_fr esl_lol esl_lol_fr esl_dota2 esl_sc2 esl_heroes"
echo "WEBTV FR   -> OgamingLoL OgamingLoL2 aaa_tv"
echo "Player     -> rekkles"
echo "riotgames  -> riotgames eulcs lpl1 lpl2 ogn_lck riotgamesbrazil riotgamesturkish riotgamesfr"
echo "Tournament -> ROFTV eswc dreamhackcs blizzard dotamajor"
set /p s="Enter a stream : "
echo "Can KO : 144p30 240p30 360p30 480p30 480p60 540p30 720p 720p30 720p60 1080p 1080p30 1080p60"
echo "OK : source high medium low mobile audio worst best"
set /p q="Enter a quality : "
echo "Stream -> %s% quality -> %q%"
start "stream %s% en %q%" %PATH_STREAMLINK% twitch.tv/%s% %q%
set /p EXIT="Want leave ? Type exit "
echo:
echo %EXIT%
if "%EXIT%"=="exit" goto end
goto boucle
:end