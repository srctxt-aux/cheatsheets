#!/usr/bin/perl -w
#

# sess1: perl perlio.pl
# sess1: md2html s.md && chromium-browser s.html
#
# it.pl
# =======================
#
#    by: Ben, srctxt.org
#    in: doctools, web, perl
# 
# ***

$filename=$ARGV[0];

#read |  Reading in scalar context
#---------------------------------
#
# Reads the next (incl. newline) into Scalar.
# $line = <FH>;
# 

#<snip>
open FH, '<', $filename || die $!;
while(<FH>){
    print;
}
#</snip>

# equivalent

#<snip>
while(defined ($_ = <FH>)){
    print;
}

print $_ while <FH>;

map print,<FH>;
map { print $_} <FH>;

close FH;

#</snip>

#diam | Reading with diamond <>
#--------------------------------
#
#
# Command line arguments in @ARGV

@ARGV=('/home/ben/kit/Cheatsheets/input.txt', '/home/ben/kit/Cheatsheets/bash.txt');
print $_, "\n"  foreach @ARGV;

# while (<>) loops through all lines in all files in @ARGV

# $ARGV: the current filename
# $_: the current line
# $.: the current line nummer
#
while(<>){
    print "$ARGV: $_ " if $. == 1;
}
#


#read | Reading in list context
#

open FH, '<', $filename || die $!;

# Reads all lines into array, more memory intensive.
@data = <FH>;
close FH;


#write | Writing to files
#-----------------------
#
# 
@ARGV=('/home/ben/kit/Cheatsheets/input.txt', '/home/ben/kit/Cheatsheets/bash.txt');
$infile = shift;
$outfile = shift;

open APP, '>>', "$outfile.app" || die $!;
print APP "append this line";
close APP;

open IN, '<', $infile || die $!;
open OUT, '>', "$outfile.txt" || die $!;

while(<IN>){
    print OUT $_;
}
close IN;
close OUT;

#parts | Get parts of a path
#
perl -MFile::Basename  -e '$path="/usr/hello.txt";($file,$dir,$ext) = fileparse($path, qr/\.[^.]*/); print "f: $file, d: $dir, e: $ext";'
