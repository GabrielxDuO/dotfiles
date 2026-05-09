# ============================================================================ #
# region Enhance original commands
# ============================================================================ #
# auto color
alias ls='ls --color=auto'
alias grep='grep --color'

# prompt before override
alias cp='cp -i'
alias mv='mv -i'
# endregion

# ============================================================================ #
# region Simplify commands
# ============================================================================ #
alias '~'='cd ~'
alias '/'='cd /'
alias '..'='cd ..'
alias v='nvim'
alias pn='pnpm'
alias gs='git status'
alias cb='pbcopy' # MacOS: copy to clipboard
alias mkd='mkdir -p' # make directory recursively

# List files aliases
alias l='eza --icons'
alias ll='eza --long --all --group --icons --time-style="+%F %H:%M:%S"'
alias la='eza -A --icons'
alias lt='eza --icons --tree'

# Safe rm (rmtrash)
alias rmt='rmtrash'
alias trash='rmtrash'
alias gomi='rmtrash'

# Swap between arch & intel
alias azsh='env /usr/bin/arch -arm64 /bin/zsh --login'
alias izsh='env /usr/bin/arch -x86_64 /bin/zsh --login'

# Homebrew
alias abrew='arch -arm64e /opt/homebrew/bin/brew'
alias ibrew='arch -x86_64 /usr/local/bin/brew'

# Docker Compose
alias dc='docker compose'
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias dcst='docker compose start'
alias dcsp='docker compose stop'
alias dcr='docker compose restart'
alias dcp='docker compose pull'
alias dcps='docker compose ps'
alias dcl='docker compose logs'
alias dcx='docker compose exec'
alias dcb='docker compose build'

# yt-dlp
alias ytd="yt-dlp --cookies $HOME/.cookies/www.youtube.com_cookies.txt"

# aichat
alias ai='aichat'

# mise
alias x='mise exec'
# endregion

# ============================================================================ #
# region Suffix Aliases
# ============================================================================ #
# Just type the filename to open it with the associated program
alias -s json=jless
alias -s md=bat
alias -s go='$EDITOR'
alias -s yaml='$EDITOR'
alias -s txt=bat
alias -s log=bat
alias -s py='$EDITOR'
alias -s js='$EDITOR'
alias -s ts='$EDITOR'
alias -s html=open # macOS: open in default browser
# endregion

# ============================================================================ #
# region Global Aliases - Use Anywhere in Commands
# ============================================================================ #
# Redirect stderr to /dev/null
alias -g NE='2>/dev/null'

# Redirect stdout to /dev/null
alias -g NO='>/dev/null'

# Redirect both stdout and stderr to /dev/null
alias -g NUL='>/dev/null 2>&1'

# Pipe to jq / jless
alias -g J='| jq'
alias -g JJ='| jless'

# Copy output to clipboard (macOS)
alias -g C='| pbcopy'

# More Readable Git Diff
alias -g D='| delta'
# endregion
