#!/usr/bin/env bash
function link_file {
    source="${PWD}/$1"
    target="${HOME}/${1/_/.}"

    if [ -e "${target}" ]; then
        echo "$target is in the way."
    else
        echo "Linking $target."
        ln -sf ${source} ${target}
    fi
}

if [ "$1" = "vim" ]; then
    for i in _vim*
    do
       link_file $i
    done
else
    for i in _*
    do
        link_file $i
    done
fi

# setup command-t requires ruby, rake, and +ruby with vim
# cd _vim/bundle/command-t
# rake make

