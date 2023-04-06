#!/usr/bin/env bash

NVIMPATH="$HOME/.config/nvim"

if [[ ! -d ${NVIMPATH} ]]; then
	echo "$HOME/.config/nvim/ not found"
	exit 0
fi

SCRIPTPATH="$(realpath "${BASH_SOURCE[0]}")"
DIRPATH="$(dirname "$SCRIPTPATH")"
FOLDER="user"
LOCAL="${DIRPATH}/${FOLDER}/"
REMOTE="${NVIMPATH}/lua/${FOLDER}/"

[ -d "${LOCAL}" ] || mkdir "${LOCAL}"
[ -d "${REMOTE}" ] || mkdir "${REMOTE}"

case "$1" in
"update" | "u")
	read -rp "from: ${LOCAL} -> to: ${REMOTE}"
	rsync -aq "${LOCAL}" "${REMOTE}"
	;;
"retrieve" | "r")
	read -rp "from: ${REMOTE} -> to: ${LOCAL}"
	rsync -aq "${REMOTE}" "${LOCAL}"
	;;
*)
	echo "script.sh [update|u]   - copy and update files from: .dotfiles -> to: .config"
	echo "script.sh [retrieve|r] - copy and update files from: .config   -> to: .dotfiles"
	;;
esac
