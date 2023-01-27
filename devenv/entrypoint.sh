#!/bin/bash
set -e

useradd -g $PGID -u $PUID -m --shell /bin/bash $USERNAME

export HOME=/home/$USERNAME
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

runuser $USERNAME -c "exec $@"