#!/bin/bash

# <bitbar.title>ngrok desktop</bitbar.title>
# <bitbar.desc>Start/stop ngrok and show/copy public URL from menu bar</bitbar.desc>
# <bitbar.author>Paul McInnis</bitbar.author>
# <bitbar.author.github>PaulMcInnis</bitbar.author.github>
# <bitbar.version>1.1</bitbar.version>

# Try to find ngrok automatically, fallback to common Homebrew path
NGROK_BIN="$(command -v ngrok || echo /opt/homebrew/bin/ngrok)"
NGROK_API="http://127.0.0.1:4040/api/tunnels"

# Check if ngrok is running
if pgrep -x "ngrok" >/dev/null 2>&1; then
    STATUS="Running"
    ICON="🟢"
    # Get the first tunnel's public URL
    PUBLIC_URL="$(curl -s "$NGROK_API" | grep -o '"public_url":"[^"]*"' | head -1 | sed 's/"public_url":"//;s/"//')"
else
    STATUS="Stopped"
    ICON="🔴"
    PUBLIC_URL=""
fi

# Top line in the menu bar
echo "ngrok $ICON"

echo "---"
echo "Status: $STATUS"
echo "---"

if [ -n "$PUBLIC_URL" ]; then
    echo "Public URL:"
    echo "$PUBLIC_URL"
    # Copy URL to clipboard
    echo "Copy URL to clipboard | bash=/usr/bin/osascript param1=-e param2='set the clipboard to \"$PUBLIC_URL\"' terminal=false"
else
    echo "Public URL: (none)"
fi

echo "---"

# Start/stop actions
echo "Start ngrok on localhost:3000 | bash=\"$NGROK_BIN\" param1='http' param2='3000' terminal=false refresh=true"
echo "Stop ngrok           | bash='pkill' param1='ngrok' terminal=false refresh=true"
