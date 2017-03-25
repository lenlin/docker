#!/bin/bash

echo "root:$RPASS" | chpasswd
ssserver -p $PORT -k $KEY -m $MAC -d start

exec /usr/sbin/sshd -D
