#!/usr/bin/env bash
set -euo pipefail

APP_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DESKTOP_DIR="${XDG_DATA_HOME:-"$HOME/.local/share"}/applications"
DESKTOP_FILE="$DESKTOP_DIR/hearing-boost.desktop"

mkdir -p "$DESKTOP_DIR"
sed "s#__APP_DIR__#$APP_DIR#g" "$APP_DIR/linux/hearing-boost.desktop" > "$DESKTOP_FILE"
chmod +x "$DESKTOP_FILE"

echo "Installed $DESKTOP_FILE"
