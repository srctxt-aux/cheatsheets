#!/bin/sh

#  go.sh - 
#  
#  Copyright (c) 2011 [:VIM_EVAL:]authorname[:END_EVAL:] <[:VIM_EVAL:]authorsite[:END_EVAL:]>
#  2011-08-19 / ... | ...
# 


rm -f awk.html
gensite awk.txt > awk.html
browser awk.html
