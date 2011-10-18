#!/bin/sh

# create site with help of the 'gensite' tool

hdir='../html'
site='site'

rm -rf $hdir
mkdir $hdir

for f in *.txt; do
    name=${f%.*} 
    spindoc $f > $hdir/${name}.html
done 
