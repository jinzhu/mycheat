= chmod: |-
== chmod: a Unix utility for managing file permissions

                         Description | Octal  | Human-readable
   ----------------------------------+--------+---------------
                      Set user write | 200    | u=w
   Set user rwx, group and others rx | 755    | u=rwx,go=rx
                      Add group read | -      | g+w
                  Remove all execute | 111    | a-x
    Set user rws, everyone else none | 4700   | u=rwxs,go-rwx
                     Add user sticky | -      | u+s
                    Add group sticky | -      | g+s


   * The read bit adds 4 to its total,
   * The write bit adds 2 to its total,
   * The execute bit adds 1 to its total.
  
  e.g:
    "-rwxr-xr-x" would be represented as 755 in three-digit octal.
    "-rw-rw-r--" would be represented as 664 in three-digit octal.
    "-r-x------" would be represented as 500 in three-digit octal.
    
    $ chmod u=rwx,go=rx foo
    $ chmod 755 foo
  
    $ find . -type d -exec chgrp mygroup \{\} \;
    $ find . -type d -exec chmod g+s \{\} \;
