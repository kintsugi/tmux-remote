#!/usr/bin/env bash

tmux setenv -g TMUX_REMOTE_STATUS_LEFT "$(tmux show-options -g | grep "^status-left " | sed 's/status-left //')"
tmux set prefix None
tmux set key-table off
tmux set -g status-left "#[fg=colour228,bg=colour52] REMOTE >>>  #[bg=default] "
tmux if -F '#{pane_in_mode}' 'send-keys -X cancel'
tmux refresh-client -S
