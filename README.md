conf
====

Hi!!! This is my personal environment configuration tool. I'm using it for easy deployment of my development environment on different machines.

You can use it if you're using:

* Awesome Window Manager or...
* Fluxbox Window Manager (i've used it before awesome)
* vim
* terminator

conf shipped with a Makefile with different targets you can provide. As always, you can use 'all' target to install everything at once. Note, that if anything is broke your configuration, you can find a backup file near original file. For example, if your awesome window manager failed to start, see for a backup file near original rc.lua at /etc/xdg/awesome. 

awesome
========

This target moves awesome rc.lua file with my personal configuration into home directory ($HOME/.config/awesome) and places
a theme directory nearby. 

awesome configuration implements keyboard layout switch with CapsLock key, hotkey for screen lock (with xscreensaver) and custom menu. 

terminator
========

Simple terminator configuration file to use Monaco font and dark semi-transparent background.

vim
========

This target will download and install several plugins for vim:

* Vundle - a plugin management system for vim. After installation you should run :PluginInstall from your vim to finish installation of vundle plugins i'm using
* vim-airline - status line for vim
* cvim - C/C++ Support for vim
* jellybeans color scheme

Note, that your original .vimrc file will be replaced.

bash
========

.bashrc file with some beauty. 

scripts
========

There is a several scripts that will be installed into /usr/bin

* gopro - i keep my projects in $HOME/Projects directory, so gopro is a "jumper" script that will look for a first matching project with provided name. Note, that you can specify only part of a project directory, e.g. gopro MyP will cd you into $HOME/Projects/MyProjectWithALongName
* layout-switch - a layout switcher from RU to US and vice-versa. This script is used by awesome to switch layouts by hitting CapsLock
* xscreensaver-layout - this script will start after login and run xscreensaver-command -watch to automatically switch layout to US on screen lock. Note, that you will fail to login if your password written in layout different from US (e.g. RU)
