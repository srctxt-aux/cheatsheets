#!/bin/bash

#  generate.sh - 
#  
# 
set -u
set -e

pushd src

outdir='../html'
rm -rf $outdir
mkdir $outdir

for f in *.txt; do
    bf=$(basename $f)
    name=${bf%.*}
    spindoc $f > ${outdir}/${name}.html
done
 popd
