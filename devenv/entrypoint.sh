#!/bin/bash
set -e

if ! getent passwd $USERNAME > /dev/null
then
useradd -g $PGID -u $PUID -m --shell /bin/bash $USERNAME
echo "$USERNAME:$PASSWD" | chpasswd
fi

/usr/sbin/sshd

if [ ! -d /certs ]
then
mkdir /certs
mkcert --install
mkcert \
 -cert-file /certs/local-cert.pem \
 -key-file /certs/local-key.pem \
 192.168.0.101 leinworld 127.0.0.1 localhost

chown -R $PUID:$PGID /certs
fi

export HOME=/home/$USERNAME
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

runuser $USERNAME -c "exec $@"