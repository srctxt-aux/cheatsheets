#!/bin/sh

#  deploydevel.sh - 
#  
#  Copyright (c) 2011 [:VIM_EVAL:]authorname[:END_EVAL:] <[:VIM_EVAL:]authorsite[:END_EVAL:]>
#  2011-08-20 / ... | ...
# 
set -u
set -e

make clean
make

# txt
rm -rf ../txt.devel/*
cp -R html/* ../txt.devel/


# src
releaseid '1.0.1-all'
rm -rf ../src.devel/*
cp  index.html ../src.devel/
mv  ../cheatsheets-1.0.1-all.tar.gz  ../src.devel/



