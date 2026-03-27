#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DIR="$HOME/prj/util/bin"

mkdir -p "$BIN_DIR"

echo "=== Installing ru (Repo Updater) ==="
echo "Source: $SCRIPT_DIR/ru"
echo "Target: $BIN_DIR/ru"

cp "$SCRIPT_DIR/ru" "$BIN_DIR/ru"
chmod +x "$BIN_DIR/ru"

echo ""
echo "=== Verifying installation ==="
"$BIN_DIR/ru" --version

echo ""
echo "=== Installation complete ==="
echo "Binary: $BIN_DIR/ru"
