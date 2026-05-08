# ============================================================================ #
# region Shell
# ============================================================================ #
unset LC_CTYPE
export EDITOR=nvim # Use neovim as default editor
export LANG='en_US.UTF-8'
# export SDKROOT="$(xcrun --sdk macosx --show-sdk-path)"
# endregion

# ============================================================================ #
# region homebrew
# ============================================================================ #
# Do NOT auto update when install packages
export HOMEBREW_NO_AUTO_UPDATE=1
# endregion

# ============================================================================ #
# region Node.js
# ============================================================================ #
# pnpm (pnpm setup)
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# endregion

# ============================================================================ #
# region mise
# ============================================================================ #
eval "$(mise activate zsh)"
# endregion

# ============================================================================ #
# region VITE+
# ============================================================================ #
# Vite+ bin (https://viteplus.dev)
[[ -f "$HOME/.vite-plus/env" ]] && . "$HOME/.vite-plus/env"
# endregion

# ============================================================================ #
# region C/C++
# ============================================================================ #
# LLVM
[[ -d /opt/homebrew/opt/llvm ]] && export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
# endregion

# ============================================================================ #
# region XDG Style Binaries
# ============================================================================ #
[[ -d $HOME/.local/bin ]] && export PATH="$HOME/.local/bin:$PATH"
# endregion

# ============================================================================ #
# region XDG Base Directory Specification
# ============================================================================ #
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
# endregion

# ============================================================================ #
# region Tealdeer
# ============================================================================ #
export TEALDEER_CONFIG_DIR="$HOME/.config/tealdeer"
# endregion

# ============================================================================ #
# region Glow
# ============================================================================ #
export GLOW_STYLE="$HOME/.config/glow/themes/catppuccin-mocha.json"
# endregion
