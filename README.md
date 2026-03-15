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

## More Information

Move to [chezmoi docs](https://www.chezmoi.io/).
