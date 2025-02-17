@echo off
set GAME_DIR=..\src\Game.Desktop
set PUBLISH_DIR=%GAME_DIR%\bin\Release\net8.0\win-x64
set ISS_FILE=installer.iss

echo Building the installer...
"C:\Program Files (x86)\Inno Setup 6\ISCC.exe" "%ISS_FILE%"

echo Installer built successfully!
