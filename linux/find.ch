= find: |-
== To search current directory and sub directories for a specific file:
  $ find . -name "rc.conf" -print
  $ find . -iname "rc.conf" -print              Same, but case insensitive:
  $ find . -iname '*.mpg' -o -iname '*.avi'     Search for both mpg & avi:
  $ find . -type f -name "rc.conf" -print       Same, but files only:
  $ find . -ctime -1 -type f                    To find files changed in the last 1 day
  $ find /tmp -size 1M -type f                  To find files larger than 1 Mb in /tmp
  $ find ~/src -newer main.css                  To find files newer than main.css in ~/src
  $ find -iwholename '/home/*/hello' -not -iwholename '*.git'
  
  
==  To execute a command on every file/dir
  $ find [expression..] -exec [command..] '{}' \;

  $ find . -name "*.css" -exec grep -l "#content" {} \; 
    To search for content inside files:

  $ find . -name "*.css" -exec sed -i -r 's/#(FF0000|F00)\b/#0F0/' {} \;
    (replaces #FF0000 red w/ #00FF00 green )
  
  $ find -name CVS -exec rm -Rf '{}' \;
    Example: find all files/dirs named CVS and delete them:
