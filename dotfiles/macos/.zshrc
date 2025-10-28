# -----------------------------------------------------------------------------
# Zsh configuration — macOS Edition
# Crafted for fluidity and near-invisible latency, echoing Apple-grade polish.
# -----------------------------------------------------------------------------

# Enable modern completion and history features
autoload -Uz compinit; compinit
setopt HIST_IGNORE_DUPS SHARE_HISTORY EXTENDED_HISTORY AUTO_CD
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000

# Elegant prompt powered by Starship
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

# Prompted animations: subtle typing highlight via zsh-autosuggestions
if [[ -f "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]]; then
  source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
  ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#9CA3AF'
fi

# Syntax highlighting with soft gradients
if [[ -f "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
  source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

# Path additions (Homebrew first for deterministic tooling)
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export EDITOR="code"

# Terminal aesthetics
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# Aliases for precision-crafted workflows
alias ls='eza --icons --group-directories-first'
alias ll='ls -la'
alias gs='git status -sb'
alias reload='source ~/.zshrc'

# Subtle welcome animation courtesy of fastfetch (optional)
if command -v fastfetch >/dev/null 2>&1; then
  fastfetch --logo-font-size 18 --logo-padding 2 --padding 1 --logo-type apple
fi
