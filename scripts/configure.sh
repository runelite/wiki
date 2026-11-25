#!/usr/bin/env bash

locations=(
  "$HOME/Library/Application Support/Jagex Launcher/Games/Old School RuneScape/RuneLite/RuneLite.app"
  "/Applications/RuneLite.app"
)

for app in "${locations[@]}"; do
  printf 'Checking: %s\n' "$app"

  if [[ -d "$app" ]]; then
    printf 'Found: %s\n' "$app"
    open -n -W "$app" --args --configure
    exit $?
  fi
done

echo "No RuneLite installation found. Install through the Jagex launcher: https://oldschool.runescape.com/download or directly from https://runelite.net" >&2
exit 1
