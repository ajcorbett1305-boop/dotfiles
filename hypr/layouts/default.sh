#!/bin/bash
# ~/.config/hypr/layouts/launch.sh

hyprctl dispatch workspace 1

# 1. Firefox — takes full screen first
hyprctl dispatch exec firefox
sleep 1.5

# 2. Neovim — preselect right to split firefox left/right (firefox gets 2/3 via rule)
hyprctl dispatch layoutmsg preselect r
hyprctl dispatch exec "kitty --class kitty-nvim -e nvim"
sleep 0.8

# 3. Cava — focus neovim column, split downward (neovim gets 4/5 via rule)
hyprctl dispatch focuswindow class:kitty-nvim
hyprctl dispatch layoutmsg preselect d
hyprctl dispatch exec "kitty --class kitty-cava -e cava"
sleep 0.8

# 4. Fastfetch — focus firefox, split downward (50/50 via rule)
hyprctl dispatch focuswindow class:(firefox)
hyprctl dispatch layoutmsg preselect d
hyprctl dispatch exec "kitty --class kitty-fastfetch -e fastfetch"
