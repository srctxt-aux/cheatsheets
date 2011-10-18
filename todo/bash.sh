#!/usr/local/bin/dash

# Bash cheatsheet
# ============================
#
#     by: ben@srctxt.org
#
# ***

#rd | Redirection
#-------------------

# Standard, Error output

# page through help messages outputted to stderr

cat -h 2>&1 | more

# Only catch error message from command

grep foo /bar.txt > /dev/null 2>&1 || echo >&2 "Error: foo is not in bar"

#jobs | 

# Each job has exit value.
# Null is good.

echo $? # last exit value


#grp | Grouping Commands
#-----------------------
#
# This doesn't create a new process.
#
# Grouping commands for 

#    { CMDS; } 
#
#    { 
#      CMDS
#     }

# convenience:
#
#<snip>
{ 
    echo "Hello"
    echo "-----"
    echo " bye"
} > myfile.txt
#</snip>

# or to pipe stuff:

#<snip>
{ echo "Hello" && echo "-----" && echo " bye"; } | while read a ; do echo "x $a"; done
#</snip>


#sub | Subshell
#---------------
#
# Comes handy when running the script with
#     set -e
# For example a non-matching 'grep' could tear the whole script down.

# Something line a try-finally
set -e
( grep -li xxxx .  ) || { echo "OK something went wrong"; }

echo "the script is still here"

# This would break the script
#     grep -li xxxx .
#     echo "the script is gone"

#ar | Arithmetics
#----------------

echo $(( 3 + 4 ))

#for | for loops
#---------------

for i in 1 2 3 4; do echo $i; done

mypath='.'
[ $mypath ] || { echo "Error $mypath is empty, you work in root /. Dangerous!"; }

for i in "$mypath"/*; do 
    echo $i; 
done

#while | Piping with while loops
#------------------------------

ls . | while read i; do echo "val: $i "; done

#ifelse | If elif else
#---------------------

# On one line

if ( exit ) ; then echo "fail" ; else echo "never happen"; fi


if ls
then
    pwd
elif cd /boo
then
    echo "boo exists"
else
    echo "fail"
fi

#case | Case Statements
#-----------------------

x='c'

case $x in
    a) echo A;;
    b) echo B;;
    ?) echo other;; # for x='c'
    *) echo default;;  # for x=''
esac


#func | Functions
#----------------

# No 'function' keyword in dash

foo(){
    echo $1;
}
foo "xx"

# or without args:

foo  # no braces




z='booya'
[[ $z == 'booya' ]]; echo "match"




#set | The set command
# ---------------
 
set -n

 #   Read commands without executing them. This command is useful for syntax checking. 

set -e

#    Exit immediately if any simple command gives an error. 
  
set -v

# Print each line of script as it is executed. 

set -x

#    Display each command expansion as it is executed. 


#ops | Test Operators
# --------------

#    -f file
#    -d directory
#    -e exists
#    -h symbolic link (also -L)
#    -r readable
#    -w writable



