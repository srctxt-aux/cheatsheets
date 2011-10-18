Debian
======

Debian 4.0 (Etch) in 1 minute

Change default language for the console:

       1. Edit /home/USERNAME/.bash_profile
       2. Add the line export LANG=de (example given for German)

Change keyboard for the console:
    dpkg-reconfigure console-data

Apply software updates
    aptitude update # refresh apt's cache
    aptitude upgrade # run the upgrade 

Install new software
    aptitude update # refresh apt's cache
    aptitude search pkgnames # lists all available software containing
    aptitude search pkgnames | grep -i WORD # lists all software containing WORD
    aptitude install PACKAGE # installs PACKAGE (found from list above)
    

Installing .deb packs
------------------------
sudo dpkg -i /home/bitvolt/Desktop/wingide3.0_3.0.2-1_i386.deb 

