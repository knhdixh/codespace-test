# macOS Dotfiles

These files chase a refined, deliberate macOS experience—swift animations, immaculate typography, and zero visual noise.

## Components
- **`.zshrc`** – Configures Zsh with Starship, zsh-autosuggestions, and syntax highlighting tuned for subtle color fades.
- **`starship.toml`** – A swan-like prompt featuring soft gradients, minimal separators, and instant context.
- **`alacritty.toml`** – Terminal profile optimized for Retina displays with 96% opacity and beam cursor for a responsive feel.

## Installation
1. Install Homebrew if it is not present: `xcode-select --install` then `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`.
2. Install dependencies:
   ```bash
   brew install starship zsh-autosuggestions zsh-syntax-highlighting eza fastfetch jetbrainsmono-nerd-font
   brew install --cask alacritty
   ```
3. Symlink the dotfiles:
   ```bash
   ln -sf "$(pwd)/dotfiles/macos/.zshrc" ~/.zshrc
   ln -sf "$(pwd)/dotfiles/macos/starship.toml" ~/.config/starship.toml
   mkdir -p ~/.config/alacritty
   ln -sf "$(pwd)/dotfiles/macos/alacritty.toml" ~/.config/alacritty/alacritty.toml
   ```
4. Restart Alacritty or reload the shell: `source ~/.zshrc`.

## Optional Enhancements
- Install [rectangle](https://rectangleapp.com) for geometric window snapping.
- Use macOS "Reduce transparency" disabled for silky blur behind the terminal.

