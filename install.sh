#!/bin/sh

#  install.sh



[ -d $HOME/refs ] || mkdir $HOME/refs
rm -rf $HOME/refs/cheatsheets
ln -s `pwd` $HOME/refs/cheatsheets

