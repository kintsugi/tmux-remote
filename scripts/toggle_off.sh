#!/usr/bin/env bash
status_left=$(tmux show-environment -g "TMUX_REMOTE_STATUS_LEFT" 2>&1)
status_left=${status_left#*=}
status_left=$(echo "$status_left" | sed 's/"//g')

tmux set -u prefix
tmux set -u key-table
tmux set -g status-left "$status_left"
tmux refresh-client -S
