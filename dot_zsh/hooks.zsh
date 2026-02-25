autoload -Uz add-zsh-hook

# ============================================================================ #
# region Change directory hook
# ============================================================================ #
_chpwd_nvm_hook() {
  [[ -f .nvmrc ]] && nvm use
}

add-zsh-hook chpwd _chpwd_nvm_hook
# endregion

# ============================================================================ #
# region Reload history before each command (make sure aichat save_shell_history works)
# ============================================================================ #
_reload_hist() {
  fc -R
}

add-zsh-hook precmd _reload_hist
# endregion