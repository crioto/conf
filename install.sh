#!/bin/bash
echo "Settings up configuration"
echo "Putting .bashrc file onto $HOME directory"
cp bashrc $HOME/.bashrc
echo "Putting .vimrc file onto $HOME directory"
cp vimrc $HOME/.vimrc
echo "Settings up fluxbox. Checking config directory..."
if [ -d $HOME/.fluxbox ]; then
    echo "Directory .fluxbox exists"
else
    echo "Creating .fluxbox directory"
    mkdir $HOME/.fluxbox
fi
cp -r fluxbox/styles $HOME/.fluxbox/ 
cp -r fluxbox/* ~/.fluxbox/
