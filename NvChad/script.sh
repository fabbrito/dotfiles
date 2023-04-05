#!/usr/bin/env bash

SCRIPTPATH="$(realpath "${BASH_SOURCE[0]}")"
DIRPATH="$(dirname ${SCRIPTPATH})"

case "$1" in
"update" | "u")
  echo "from: .dotfiles -> to: .config"
	cp -r -u ${DIRPATH}/custom ~/.config/nvim/lua/custom
	;;
"retrieve" | "r")
	echo "from: .config   -> to: .dotfiles"
	cp -r -u ~/.config/nvim/lua/custom ${DIRPATH}/custom
	;;
*)
  echo "script.sh [update|u]   - copy and update files from: .dotfiles -> to: .config"
  echo "script.sh [retrieve|r] - copy and update files from: .config   -> to: .dotfiles"
	;;
esac

