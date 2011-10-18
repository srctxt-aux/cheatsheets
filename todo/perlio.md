it.pl
=======================

    by: Ben, srctxt.org
    in: doctools, web, perl

***

<h2 id='read'>Reading in scalar context</h2>

Reads the next (incl. newline) into Scalar.
$line = <FH>;

    open FH, '<', $filename || die $!;
    while(<FH>){
        print;
    }
equivalent
    while(defined ($_ = <FH>)){
        print;
    }
    
    print $_ while <FH>;
    
    map print,<FH>;
    map { print $_} <FH>;
    
    close FH;
    

<h2 id='diam'>Reading with diamond <></h2>


Command line arguments in @ARGV
while (<>) loops through all lines in all files in @ARGV
$ARGV: the current filename
$_: the current line
$.: the current line nummer



Reads all lines into array, more memory intensive.

<h2 id='write'>Writing to files</h2>


