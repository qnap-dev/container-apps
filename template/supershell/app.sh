#!/bin/sh

for p in /share/*/.qpkg/container-station/usr/bin/.libs/docker; do
    ln -s "$p" /usr/local/bin/docker
done

if [ "$#" -ge 1 ]; then
    p=$1
    shift
    exec $p "$@"
fi
exec zsh
