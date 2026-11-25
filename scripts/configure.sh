#!/usr/bin/env bash

find_and_run() {
  local file

  for file in "$@"; do
	printf 'Checking: %s\n' "$file"
    if [[ -f "$file" ]]; then
      printf 'Found: %s\n' "$file"
      "$file" --configure
      return $?
    fi
  done

  echo "No RuneLite installation found. Install through the Jagex launcher: https://oldschool.runescape.com/download or directly from https://runelite.net" >&2
  return 1
}

run_windows() {
  local locations=(
    "$HOME/AppData/Local/RuneLite/RuneLite.exe"
  )
  find_and_run "${locations[@]}"
}

run_macos() {
  local locations=(
    "$HOME/Library/Application\ Support/Jagex\ Launcher/Games/Old\ School\ RuneScape/RuneLite/RuneLite.app/Contents/MacOS/RuneLite"
    "/Applications/RuneLite.app/Contents/MacOS/RuneLite"
  )
  find_and_run "${locations[@]}"
}

run_linux() {
  local locations=(
    "$HOME/.local/share/Jagex Launcher/games/runelite/RuneLite.AppImage"
  )
  find_and_run "${locations[@]}"
}

case "$OSTYPE" in
  mingw*|msys*|cygwin*) run_windows ;;
  darwin*)              run_macos ;;
  linux*)               run_linux ;;
  *)
    echo "Unsupported operating system: $OSTYPE" >&2
    exit 1
    ;;
esac
