echo off
REM echo off prevents the display of commands in the terminal
REM Cmd window name
@title eSport stream
REM PATH_STREAMLINK="Your path to streamlink executable"
set PATH_STREAMLINK="C:\Program Files (x86)\Streamlink\bin\streamlink.exe"
:boucle
REM A list of the channels you often watch to copy paste
echo "ESL        -> ESL_CSGO esl_france esl_csgo_fr esl_lol esl_lol_fr esl_dota2 esl_sc2"
echo "WEBTV FR   -> OgamingLoL OgamingLoL2"
echo "Player     -> rekkles"
echo "riotgames  -> riotgames lpl lpl2 lck riotgamesbrazil riotgamesturkish"
echo "Tournament -> ROFTV eswc dreamhackcs blizzard dotamajor ognesports"
set /p s="Enter a stream : "
%PATH_STREAMLINK% twitch.tv/%s%
set /p q="Enter a quality : "
echo "Stream -> %s% quality -> %q%"
start "stream %s% en %q%" %PATH_STREAMLINK% twitch.tv/%s% %q%
set /p EXIT="Launch another stream ? Type any key. Want leave ? Write exit :"
if "%EXIT%"=="exit" goto end
goto boucle
:end
