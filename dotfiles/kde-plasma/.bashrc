# -----------------------------------------------------------------------------
# Bash configuration — KDE Plasma Edition
# Designed for graceful translucency and Plasma's kinetic typography.
# -----------------------------------------------------------------------------

# History
HISTCONTROL=ignoredups:erasedups
HISTSIZE=50000
HISTFILESIZE=100000
PROMPT_COMMAND="history -a"

# Prompt via Starship
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init bash)"
fi

# LS Enhancements
ais() {
  if command -v eza >/dev/null 2>&1; then
    eza --icons --group-directories-first "$@"
  else
    ls --color=auto "$@"
  fi
}
alias ls='ais'
alias ll='ais -lah'
alias gs='git status -sb'
alias reload='source ~/.bashrc'

# Fastfetch splash for fluid intro
if command -v fastfetch >/dev/null 2>&1; then
  fastfetch --logo kde --logo-padding 2 --padding 1 --color-keys "#A5B4FC"
fi

# Wayland friendly environment tweaks
export MOZ_ENABLE_WAYLAND=1
export QT_QUICK_CONTROLS_STYLE=org.kde.desktop
