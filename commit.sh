#!/bin/bash

set -e

BIN_NAME="commit-ai"
RELEASES_URL="https://github.com/broisnischal/commit-ai/releases/latest/download"

case "$(uname -s)" in
    Linux*)     PLATFORM=linux;;
    Darwin*)    PLATFORM=macos;;
    CYGWIN*)    PLATFORM=windows;;
    MINGW*)     PLATFORM=windows;;
    *)          PLATFORM=unknown;;
esac

if [ "$PLATFORM" == "unknown" ]; then
    echo "Unsupported platform"
    exit 1
fi

INSTALL_DIR="/usr/local/bin"  # Change this if needed

echo "Downloading $BIN_NAME for $PLATFORM..."
curl -sL "$RELEASES_URL/$PLATFORM/$BIN_NAME" -o "$INSTALL_DIR/$BIN_NAME"
chmod +x "$INSTALL_DIR/$BIN_NAME"
echo "Installed $BIN_NAME to $INSTALL_DIR"
