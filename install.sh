#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE[0]}")" || exit

# Get the latest version of stowsh
[ -d ./bin ] || mkdir ./bin
[ ! -f ./bin/stowsh ] && curl -o ./bin/stowsh https://raw.githubusercontent.com/mikepqr/stowsh/master/stowsh
chmod +x ./bin/stowsh

# Packages are non-hidden directories
pkgs="$(find . -maxdepth 1 ! -name '.*' -type d | sed "s|./||")"

for pkg in $pkgs
do
    ./bin/stowsh -v -s "$pkg" -t "$HOME"
done
