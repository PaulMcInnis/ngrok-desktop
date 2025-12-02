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

```bash
git clone https://github.com/PaulMcInnis/ngrok-desktop.git
cd ngrok-desktop
./install.sh
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
