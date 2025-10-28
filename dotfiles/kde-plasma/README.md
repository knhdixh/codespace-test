# KDE Plasma Dotfiles

Balancing the kinetic energy of Plasma with a serene prompt—everything glides yet remains understated.

## Components
- **`.bashrc`** – Bash configuration with Starship, eza integration, and Wayland-friendly environment hints.
- **`starship.toml`** – Prompt infused with aurora gradients for Plasma.
- **`konsole.profile`** – Optional profile aligning Konsole fonts and scrollback to the rest of the suite.

## Installation
1. Install dependencies:
   ```bash
   sudo pacman -S starship eza fastfetch jetbrains-fonts --needed
   # or use your distribution's equivalents
   ```
2. Apply the files:
   ```bash
   ln -sf "$(pwd)/dotfiles/kde-plasma/.bashrc" ~/.bashrc
   ln -sf "$(pwd)/dotfiles/kde-plasma/starship.toml" ~/.config/starship.toml
   mkdir -p ~/.local/share/konsole
   ln -sf "$(pwd)/dotfiles/kde-plasma/konsole.profile" ~/.local/share/konsole/SwanPlasma.profile
   ```
3. Select the **Swan Plasma** profile in Konsole preferences.
4. Reload the shell: `source ~/.bashrc`.

## Optional Enhancements
- Enable **blur** behind windows in KDE System Settings → Desktop Effects.
- Pair with the [Sweet Aurora](https://store.kde.org/p/1294174/) color scheme for Konsole to match the palette.

