#!/usr/bin/env bash

locations=(
  "$HOME/Library/Application Support/Jagex Launcher/Games/Old School RuneScape/RuneLite/RuneLite.app/Contents/MacOS/RuneLite"
  "/Applications/RuneLite.app/Contents/MacOS/RuneLite"
)

for file in "${locations[@]}"; do
  printf 'Checking: %s\n' "$file"

  if [[ -f "$file" ]]; then
    printf 'Found: %s\n' "$file"
    "$file" --configure
    exit $?
  fi
done

echo "No RuneLite installation found. Install through the Jagex launcher: https://oldschool.runescape.com/download or directly from https://runelite.net" >&2
exit 1
