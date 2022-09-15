#!/bin/bash

for n in 1 2 3

do
    eval "ssh-keyscan -H host0$n >> ~/.ssh/known_hosts"
done



/usr/sbin/sshd -D