# ngrok Desktop

![preview](https://raw.githubusercontent.com/PaulMcInnis/ngrok-desktop/main/preview.png)

A SwiftBar plugin to control ngrok from your macOS menu bar.

## Features

- Start/stop ngrok tunnels from the menu bar
- View tunnel status (running/stopped)
- Copy public URL to clipboard

## Requirements

- macOS
- [Homebrew](https://brew.sh)
- [ngrok](https://ngrok.com) (`brew install ngrok`)

## Install

1. Install [SwiftBar](https://swiftbar.app):
   ```bash
   brew install --cask swiftbar
   ```

2. Copy the plugin to your SwiftBar plugins folder:
   ```bash
   P="$(defaults read com.ameba.SwiftBar PluginDirectory)/ngrok.10s.sh" && curl -o "$P" https://raw.githubusercontent.com/PaulMcInnis/ngrok-desktop/main/ngrok.10s.sh && chmod +x "$P"
   ```

## Usage

Click the ngrok icon in your menu bar:

- **🟢** = ngrok running
- **🔴** = ngrok stopped

Menu options:

- View current public URL
- Copy URL to clipboard
- Start ngrok on localhost:3000
- Stop ngrok

## License

MIT
