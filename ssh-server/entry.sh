#!/bin/bash
/usr/sbin/sshd
while true;
do
    cd /home/guest/files
    sleep 5
    git pull
done