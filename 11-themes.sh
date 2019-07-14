#!/bin/bash

git clone git@github.com:EliverLara/Ant-Dracula.git ~/.themes/Ant-Dracula

gsettings set org.gnome.desktop.interface gtk-theme "Ant-Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Ant-Dracula"

