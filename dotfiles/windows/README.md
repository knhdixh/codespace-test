# Windows Dotfiles

Curated to make Windows terminals feel as composed as a studio display—no harsh contrasts, effortless animations, and responsive controls.

## Components
- **`Microsoft.PowerShell_profile.ps1`** – Elevates PowerShell with Starship, predictive history, and fastfetch introduction.
- **`starship.toml`** – Calibrated prompt with soft blues and concise Git signals.

## Installation
1. Install [Windows Terminal](https://aka.ms/terminal) and set it as default.
2. Install dependencies from an elevated PowerShell prompt:
   ```powershell
   winget install --id Starship.Starship -e
   winget install --id eza-community.eza -e
   winget install --id Fastfetch-cli.Fastfetch -e
   ```
3. Create the PowerShell profile directory if needed:
   ```powershell
   New-Item -ItemType Directory -Force "$HOME\Documents\PowerShell"
   ```
4. Symlink the files (replace `<repo>` with your repository path):
   ```powershell
   New-Item -ItemType SymbolicLink -Path "$HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Target "<repo>\dotfiles\windows\Microsoft.PowerShell_profile.ps1" -Force
   New-Item -ItemType Directory -Force "$HOME\.config"
   New-Item -ItemType SymbolicLink -Path "$HOME\.config\starship.toml" -Target "<repo>\dotfiles\windows\starship.toml" -Force
   ```
5. Restart Windows Terminal.

## Optional Enhancements
- Enable acrylic background in Windows Terminal with 5–10% opacity for a floating effect.
- Install the **JetBrainsMono Nerd Font** via [Nerd Fonts](https://www.nerdfonts.com) and set it as the terminal font.

