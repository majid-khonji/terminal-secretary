# Terminal Secretary

A command-line tool designed for efficient debugging in terminal environments, utilizing the power of GPT-4.

## Prerequisites

- Fish shell
- [Shell GPT](https://github.com/TheR1D/shell_gpt)
  - An API key is required

## Installation

Install using Fisher:
```fish
fisher install majid-khonji/terminal-secretary
```
Alternatively, install manually:
1. Clone the repository to your local machine.
2. Copy `functions/gptsec.fish` into your Fish functions directory (`~/.config/fish/functions/`).
3. Copy `conf.d/gptsec.fish` into your Fish config directory (`~/.config/fish/conf.d/`). Adjust shortcuts as desired.

## Usage

The tool operates in three modes: Ask, Check, and Inline.

**Check Mode**  
- Triggered by pressing Ctrl+G after highlighting an error message in your terminal  
- Use this mode to analyze and get suggestions for any strange errors by highlighting the error text before pressing the shortcut.
- The plugin automatically handles spacial charecters like double qoutes in your clipboard

**Ask Mode**  
- Activated by pressing Ctrl+S.  
- Opens a GPT-powered prompt in your command line at the current cursor location.


**Inline Mode**  
- Triggered by pressing Ctrl+N.  
- Allows you to write a prompt that includes text from your clipboard, with the ability to append additional questions or commands.

