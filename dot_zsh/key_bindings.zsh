# ==============================================================================
# region Use vim style navigation keys in menu completion
# ==============================================================================
# (`menuselect` has been replaced with zsh-completions currently)
# bindkey -M menuselect 'h' vi-backward-char
# bindkey -M menuselect 'k' vi-up-line-or-history
# bindkey -M menuselect 'l' vi-forward-char
# bindkey -M menuselect 'j' vi-down-line-or-history
# endregion

# ==============================================================================
# region Open buffer line in editor
# ==============================================================================
autoload -Uz edit-command-line
zle -N edit-command-line

# <C-v> := edit command line
bindkey '^v' edit-command-line
bindkey -M vicmd '^v' edit-command-line

# [vicmd]</><?> := edit command line
bindkey -M vicmd '/' edit-command-line
bindkey -M vicmd '?' edit-command-line
# endregion

# ==============================================================================
# region tmux
# ==============================================================================
# <C-a> := open tmux
bindkey -s '^A' 'tmux-san\n' # work with tmux-san alias
# endregion
