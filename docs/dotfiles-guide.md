# Swan Suite Dotfiles Guide

These dotfiles deliver a cross-platform terminal experience crafted with the grace of a swan—minimal motion, expressive gradients, and sub-100 ms feedback.

## Philosophy
- **Elegant Motion** – Only purposeful animations (fastfetch splash, blinking beam cursor) for momentary delight.
- **Apple-grade Precision** – Consistent typography, whitespace, and alignment between platforms.
- **Shared Mental Model** – Git shortcuts, Starship prompts, and `eza`-powered listings behave identically.

## Structure
```
dotfiles/
  macos/
  windows/
  kde-plasma/
```
Each directory contains an OS-specific prompt, shell configuration, and terminal profile aligned with native expectations.

## Quick Start
1. Clone the repository.
2. Navigate to `dotfiles/<your-platform>/`.
3. Follow the local `README.md` to install dependencies and symlink files.

## Shared Features
- **Starship prompt** with curated palettes for each OS.
- **Fastfetch** welcome screen providing subtle animated introduction.
- **Aliases** for Git and directory listings with icons.

## Keeping in Sync
When updating shared tooling (e.g., new alias or prompt tweak), replicate the change across all platform directories to preserve muscle memory.

