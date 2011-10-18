#!/bin/sh

#  release.sh - 
#  
# 
set -u
set -e

rel='1.0.0'
files='awk bash CHANGES LICENSE README'

dir=$(basename `pwd`  | sed 's/\..*//g')

reldir="${dir}-${rel}"
rm -rf "$reldir"
mkdir "$reldir"
mkdir "$reldir"/html
mkdir "$reldir"/src

die(){
	echo >&2 "$@"
	exit 1
}

for f in $files; do

    # altdown
    if [ -f "$f".txt ] ; then
      rm -f ${f}.md
      altdown ${f}.txt > ${f}.md

      # markdow
      rm -f ${f}.html
      md2html ${f}.md

      # deploy
      mv ${f}.html "$reldir"/html
      cp ${f}.txt "$reldir"/src

      # cleanup
      rm -f ${f}.md
  else
      cp ${f} "$reldir"/src
  fi
done

