= dpkg: "Listing the Packages that are Available for Your System

  $ dpkg -l \xE2\x80\x98*emacs*\xE2\x80\x99

  

  Listing the Packages that are Available and uninstalled

  $ dpkg -l \xE2\x80\x98*emacs*\xE2\x80\x99 | grep \xE2\x80\x98^un\xE2\x80\x99

  

  List contents of a package

  $ dpkg -L emacs21

  

  Determining What Package Provides an Existing File 

== $ dpkg --search /usr/bin/ar  # which package provides the /usr/bin/ar archiving utility:

  

  Determining What Package Provides a Missing File

  $ ls -l /usr/lib/*power*
   -> ls: /usr/lib/*power*: No such file or directory

  $ apt-file search libpowersave.so
   ->libpowersave-dev: usr/lib/libpowersave.so"
