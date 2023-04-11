#!/bin/sh
# list_pkgs <directory>
directory="$1"
if [ -z "$directory" ]; then
    directory="."
fi
go list $directory/... | sed -e "s/^github.com/xianleigirl/go.mongodb.org\/mongo-driver/./"
