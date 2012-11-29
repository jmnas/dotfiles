#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
#exec startxfce4
# ...or the Window Manager of your choice
xrdb  -merge ~/.XResources
xsetroot -cursor_name left_ptr
# http://superuser.com/questions/371321/xmonad-focused-window-border-issues-with-virtualbox-vmware-guest-additions
xcompmgr &
exec xmonad
# exec startfluxbox
