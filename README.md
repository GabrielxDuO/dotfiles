# GabrielxD's Dotfiles

My personal dotfiles managed with [chezmoi](https://www.chezmoi.io/), mainly targeting **macOS** for now.

## Quick Start

0. Install chezmoi:

   ```bash
   brew install chezmoi
   ```

1. Initialize chezmoi with my dotfiles repo:

   ```bash
   chezmoi init https://github.com/GabrielxDuO/dotfiles.git
   ```

   Or use a shorter alias:

   ```bash
   chezmoi init GabrielxDuO
   ```

2. Check what changes that chezmoi will make:

   ```bash
   chezmoi diff
   ```

3. Apply changes verbosely:

   ```bash
   chezmoi apply -v
   ```

Or you can a single command to install chezmoi and the dotfiles (Not recommended):

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply GabrielxDuO
```

## How It Works

- **Package management**: Packages defined in `packages.yaml` are auto-installed via `brew bundle` when changes are detected.
- **External dependencies**: Zsh plugins, themes, and Neovim config are fetched and kept up-to-date via `.chezmoiexternal.yaml`.
- **Templates**: `.tmpl` files use chezmoi's templating (Go templates + [Sprig](https://masterminds.github.io/sprig/)) for OS-specific and conditional logic.
- **Runtime detection**: Development tool environments (pyenv, goenv, jenv, etc.) are loaded conditionally using `command -v` checks — no hard dependency on the package list.

## More Information

Move to [chezmoi docs](https://www.chezmoi.io/).
