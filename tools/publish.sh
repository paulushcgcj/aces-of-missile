#!/bin/bash
set -e
if [[ "$(pwd)" == */tools ]]; then
  REF_FOLDER="../"
else
  REF_FOLDER="./"
fi


GAME_NAME="Ace of Missile"
GAME_DIR="$REF_FOLDER/src/Game.Desktop"
BUILD_DIR="bin/Release/net8.0"
PUBLISH_DIR="$BUILD_DIR/publish"

# Navigate to the project folder
cd $REF_FOLDER/src/Game.Desktop

# Clean previous builds
dotnet clean
echo "Removing publish directory $PUBLISH_DIR"
rm -rf "$PUBLISH_DIR"

# Publish the game as a self-contained Windows executable
dotnet publish -c Release -r win-x64 --self-contained true -o "$PUBLISH_DIR"
dotnet publish -c Release -r linux-x64 --self-contained true -o "$PUBLISH_DIR"
dotnet publish -c Release -r osx-arm64 --self-contained true -o "$PUBLISH_DIR"

echo "Game published to $PUBLISH_DIR"
