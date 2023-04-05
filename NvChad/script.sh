#!/usr/bin/env bash

NVIMPATH="$HOME/.config/nvim"

if [[ ! -d ${NVIMPATH} ]]; then
	echo "~/.config/nvim/ not found"
	exit 0
fi

SCRIPTPATH="$(realpath "${BASH_SOURCE[0]}")"
DIRPATH="$(dirname ${SCRIPTPATH})"

case "$1" in
"update" | "u")
	read -p 'from: .dotfiles -> to: .config'
	rsync -aq ${DIRPATH}/custom/ ${NVIMPATH}/lua/custom
	;;
"retrieve" | "r")
	read -p 'from: .config   -> to: .dotfiles'
	rsync -aq ${NVIMPATH}/lua/custom/ ${DIRPATH}/custom
	;;
*)
	echo "script.sh [update|u]   - copy and update files from: .dotfiles -> to: .config"
	echo "script.sh [retrieve|r] - copy and update files from: .config   -> to: .dotfiles"
	;;
esac
