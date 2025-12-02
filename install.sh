#!/bin/bash

set -e

# Install SwiftBar if not already installed
if [ -d "/Applications/SwiftBar.app" ] || brew list --cask swiftbar &>/dev/null; then
    echo "SwiftBar already installed"
else
    echo "Installing SwiftBar via Homebrew..."
    brew install --cask swiftbar
fi

# Get the directory where this script lives
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Get SwiftBar plugin directory from preferences, or use default
PLUGIN_DIR="$(defaults read com.ameba.SwiftBar PluginDirectory 2>/dev/null || echo "$HOME/swiftbar-plugins")"
mkdir -p "$PLUGIN_DIR"

# Copy plugin to SwiftBar plugins folder
cp "$SCRIPT_DIR/ngrok.10s.sh" "$PLUGIN_DIR/"
chmod +x "$PLUGIN_DIR/ngrok.10s.sh"

echo "Plugin installed to $PLUGIN_DIR/ngrok.10s.sh"
echo ""
echo "To complete setup:"
echo "1. Open SwiftBar from Applications"
echo "2. When prompted, set the plugin folder to: $PLUGIN_DIR"
echo "3. The ngrok plugin will appear in your menu bar"
