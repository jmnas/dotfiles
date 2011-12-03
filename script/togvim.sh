#!/bin/sh

gvim --remote `cygpath -u -a "$*"`

