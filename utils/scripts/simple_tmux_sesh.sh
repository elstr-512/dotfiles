#!/bin/sh

# Set Session Name
SESSION="ee"
SESSIONEXISTS=$(tmux list-sessions 2>/dev/null | grep $SESSION)

# Only create tmux session if it doesn't already exist
if [ "$SESSIONEXISTS" = "" ]
then
    # Start New Session with our name
    tmux new-session -d -s $SESSION

    # Name first Pane and start Shell
    tmux rename-window -t 1 '⊒'
    # tmux send-keys -t '⊒' "clear" C-m
fi

# Attach Session, on the Main window
tmux attach-session -t $SESSION:1
