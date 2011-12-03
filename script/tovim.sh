#!/bin/bash

baseserver="VIM1"
servername=$baseserver
haveserver=$(vim --serverlist | grep -q VIM)
while getopts "n" opt; do
    case $opt in
        n)
            if $haveserver; then
                lastserver=$(vim --serverlist | tail -n 1)
                lastnum=${lastserver:3}
                newnum=$lastnum
                let "newnum += 1"
                servername="vim$newnum"
            fi
            ;;
    esac
done
shift $(($OPTIND - 1))

filelist=$(cygpath -u -a "$*")
if [[ !$haveserver ]] || [[ $servername != $baseserver ]]; then
    echo 'Starting a new server...'
    mintty vim --servername $servername --remote $filelist &
else
    vim --servername $servername --remote $filelist &
fi

