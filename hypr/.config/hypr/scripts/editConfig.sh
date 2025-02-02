#!/usr/bin/bash
#Edit hyprland config files with wofi

# Kill Wofi if already running before execution
if pgrep -x "wofi" >/dev/null; then
  pkill wofi
  #exit -1
fi

TERM=kitty
EDITOR=vim
config_path="/home/ale/dotfiles/hypr/.config/hypr/configs/"
config_files="Animation.conf\nEnvVariables.conf\nInput.conf\nKeybinds.conf\nLookFeel.conf\nSettings.conf\nStartup_Apps.conf\nWindowRules.conf\nWorkspaceRules.conf"

echo "$config_path"
option=$(echo -e "$config_files" | wofi -W 300 -H 500 -dmenu -p config:)

case $option in
$'Animation.conf')
  $TERM -- $EDITOR "$config_path$option"
  ;;
$'EnvVariables.conf')
  $TERM -- $EDITOR "$config_path$option"
  ;;
$'Input.conf')
  $TERM -- $EDITOR "$config_path$option"
  ;;
$'Keybinds.conf')
  $TERM -- $EDITOR "$config_path$option"
  ;;
$'LookFeel.conf')
  $TERM -- $EDITOR "$config_path$option"
  ;;
$'Settings.conf')
  $TERM -- $EDITOR "$config_path$option"
  ;;
$'Startup_Apps.conf')
  $TERM -- $EDITOR "$config_path$option"
  ;;
$'WindowRules.conf')
  $TERM -- $EDITOR "$config_path$option"
  ;;
$'WorkspaceRules.conf')
  $TERM -- $EDITOR "$config_path$option"
  ;;
esac
