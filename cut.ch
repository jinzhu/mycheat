= cut: "Prints selected parts of lines (of a text file), or, in other words, removes certain sections of a line. You may wish to remove things according to tabs or commas, or anything else you can think of...

  

== Options for cut:

  

  \t-d \t\t\t\t\t\t# allows you to specify another delimiter

  \tcut -d ':' /etc/passwd

  \t

  \t-f \t\t\t\t\t\t# columns, separated by delimiter

  \tcut -d ',' -f 1 /etc/passwd 

  

  \t, \t\t\t\t\t\t# separate numbers, used to cut particular columns.

  \tcut -d ':' -f 1,7 /etc/passwd

  

  \t- \t\t\t\t\t\t# from line x to line y

  \tcut -c 1-50 file1.txt

  

  \t-x \t\t\t\t\t\t# cut from line 1 to \xE2\x80\x9Cx\xE2\x80\x9D

  \tx- \t\t\t\t\t\t# cut from \xE2\x80\x9Cx\xE2\x80\x9D to the end.

  \tcut -5, 20-, 8 file2.txt
"
