#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CONFIG_DIR="$(realpath "$SCRIPT_DIR/../../.config")"

function __help_menu() {
  local CODE
  if [[ -n "$1" ]]; then CODE="$1"; else CODE=128; fi

  printf "$0 <OPTION>\nall options: <CONFIG>, ALL, LIST, HELP\n"
  exit "$CODE"
}

function __linker_linking() {
  local CONFIGDIR_NAME=$1

  if [[ -e "$HOME/.config/$CONFIGDIR_NAME" ]]; then
    echo "removing existing directory"
    rm -rf "$HOME/.config/$CONFIGDIR_NAME"
  fi

  if ln -sfd "$CONFIG_DIR/$CONFIGDIR_NAME" "$HOME/.config/"; then
    echo "link created from $CONFIG_DIR/$CONFIGDIR_NAME to $HOME/.config/$CONFIGDIR_NAME"
    exit 0
  else
    echo "link failed to create"
    exit 126
  fi
}

# pre-checks

if [[ -z "$1" ]]; then # syntax, cmon it only accepts one thing!
  printf "incorrect usage\ncorrect usage: "
  __help_menu 1
elif [[ "${1,,}" = "list" ]]; then # what do i have in there?
  ls "$CONFIG_DIR"
  exit 0
elif [[ "${1,,}" = "help" ]]; then # what does this do again?
  __help_menu 0
fi

# linker script

if [[ "${1,,}" = "all" ]]; then 
  for FILE in "$CONFIG_DIR/*"; do
    __linker_linking $(basename "$FILE")
  done
  __linker_linking "Code - OSS"

elif [[ -e "$CONFIG_DIR/$1" ]]; then # linking a single config
  echo "linking $1 to local .config folder"
  __linker_linking "$1" 
  
else # config is not there
  echo "config \"$1\" doesn't exist in the repo's .config folder"
  echo "use <$0 list> to see a list of configs"
  exit 1
fi
