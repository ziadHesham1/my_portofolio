#!/usr/bin/env bash

set -euo pipefail

usage() {
  echo "Usage: $0 <icon-path>"
  echo
  echo "Updates assets/icons/app_icon.png and the generated web icon files."
}

if [ "${1:-}" = "" ]; then
  usage
  exit 1
fi

if ! command -v sips >/dev/null 2>&1; then
  echo "Error: sips is required but was not found in PATH."
  exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ICON_ARG="$1"

if [[ "$ICON_ARG" = /* ]]; then
  SOURCE_ICON="$ICON_ARG"
else
  SOURCE_ICON="$(cd "$(dirname "$ICON_ARG")" && pwd)/$(basename "$ICON_ARG")"
fi

if [ ! -f "$SOURCE_ICON" ]; then
  echo "Error: icon not found at $SOURCE_ICON"
  exit 1
fi

ICON_INFO="$(sips -g pixelWidth -g pixelHeight "$SOURCE_ICON" 2>/dev/null || true)"
ICON_WIDTH="$(printf '%s\n' "$ICON_INFO" | awk -F': ' '/pixelWidth/ {print $2}')"
ICON_HEIGHT="$(printf '%s\n' "$ICON_INFO" | awk -F': ' '/pixelHeight/ {print $2}')"

if [ -z "$ICON_WIDTH" ] || [ -z "$ICON_HEIGHT" ]; then
  echo "Error: could not read image dimensions from $SOURCE_ICON"
  exit 1
fi

if [ "$ICON_WIDTH" != "$ICON_HEIGHT" ]; then
  echo "Error: icon must be square. Current size is ${ICON_WIDTH}x${ICON_HEIGHT}."
  exit 1
fi

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

NORMALIZED_ICON="$TMP_DIR/app_icon.png"
WEB_DIR="$SCRIPT_DIR/web"
WEB_ICONS_DIR="$WEB_DIR/icons"
ASSETS_ICON="$SCRIPT_DIR/assets/icons/app_icon.png"

mkdir -p "$WEB_ICONS_DIR" "$(dirname "$ASSETS_ICON")"

# Normalize the source icon once, then fan it out to the project targets.
sips -z 512 512 "$SOURCE_ICON" --out "$NORMALIZED_ICON" >/dev/null

cp "$NORMALIZED_ICON" "$ASSETS_ICON"
cp "$NORMALIZED_ICON" "$WEB_DIR/favicon.png"
cp "$NORMALIZED_ICON" "$WEB_ICONS_DIR/Icon-512.png"
cp "$NORMALIZED_ICON" "$WEB_ICONS_DIR/Icon-maskable-512.png"

sips -z 192 192 "$NORMALIZED_ICON" --out "$WEB_ICONS_DIR/Icon-192.png" >/dev/null
sips -z 192 192 "$NORMALIZED_ICON" --out "$WEB_ICONS_DIR/Icon-maskable-192.png" >/dev/null

echo "Updated web icons from: $SOURCE_ICON"
echo "Source icon: $ASSETS_ICON"
echo "Web assets:"
echo "  $WEB_DIR/favicon.png"
echo "  $WEB_ICONS_DIR/Icon-192.png"
echo "  $WEB_ICONS_DIR/Icon-512.png"
echo "  $WEB_ICONS_DIR/Icon-maskable-192.png"
echo "  $WEB_ICONS_DIR/Icon-maskable-512.png"
echo
echo "Next step: run 'flutter build web' before deploying."
