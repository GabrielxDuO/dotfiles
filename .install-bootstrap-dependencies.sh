#!/bin/sh
set -eu

changed=0

if [ "$(uname -s)" != "Darwin" ]; then
  echo "Skipping bootstrap: macOS only."
  exit 0
fi

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found; installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  changed=1
fi

if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"

  if ! grep -Fq '/opt/homebrew/bin/brew shellenv' "$HOME/.zprofile" 2>/dev/null; then
    printf '\neval "$(/opt/homebrew/bin/brew shellenv)"\n' >>"$HOME/.zprofile"
    changed=1
  fi
elif [ -x /usr/local/bin/brew ]; then
  eval "$(/usr/local/bin/brew shellenv)"

  if ! grep -Fq '/usr/local/bin/brew shellenv' "$HOME/.zprofile" 2>/dev/null; then
    printf '\neval "$(/usr/local/bin/brew shellenv)"\n' >>"$HOME/.zprofile"
    changed=1
  fi
fi

if ! command -v delta >/dev/null 2>&1; then
  echo "delta not found; installing git-delta..."
  brew install git-delta
  changed=1
fi

if ! command -v diffnav >/dev/null 2>&1; then
  echo "diffnav not found; installing..."
  brew install dlvhdr/formulae/diffnav
  changed=1
fi

if ! command -v node >/dev/null 2>&1; then
  echo "Node.js not found; installing the latest LTS..."
  brew install node@24
  brew link --overwrite --force node@24
  changed=1
fi

if [ "$changed" -eq 1 ]; then
  echo "Bootstrap completed."
fi
