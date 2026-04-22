autoload -Uz add-zsh-hook

# ============================================================================ #
# region Reload history before each command (make sure aichat save_shell_history works)
# ============================================================================ #
_reload_hist() {
  fc -R
}

add-zsh-hook precmd _reload_hist
# endregion