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
ssh srctxt 'mkdir -p  ~/sites/srctxt.org/txt/cheatsheets'
rsync -avz --delete -e 'ssh' ../txt.devel/ srctxt:~/sites/srctxt.org/txt/tools/cheatsheets/


# src
ssh srctxt 'mkdir -p  ~/sites/srctxt.org/src/cheatsheets'
rsync -avz --delete -e 'ssh' ../src.devel/ srctxt:~/sites/srctxt.org/src/tools/cheatsheets/


