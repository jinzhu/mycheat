= grep: |-
== Overview
  ========
  $ grep [OPTION]... PATTERN [FILE] ...
  
== Useful Options
  -h:   suppress file names in output
  -w:   restrict search to whole words only
  -c:   displays count of matching lines in each file, not the lines themselves
        (note this is not the same as $ grep index *.rb | wc -l)
  -i:   ignore case
  -l:   list only file names containing matching lines
  -n:   precede each line with the line number where it was found
  -v:   display all lines NOT matching pattern
  -C:   Display NUM lines of context either side of matches
  -e pattern: 
        Search for a pattern. Can use multiple times on a line
  -r:   Search recursively from the current or specificed directory
  --include=pattern:
        Only search in file names matching pattern
  --exclude=pattern:
        Do not search in file names matching pattern
  
== Examples:
  $ grep -r --include=*.rb -e "TagsHelper" -e "tags_helper" .
  # Count the number of functions in all JS files
  grep -c function *.js
  # Print lines that DO NOT have "function"
  grep -v function *.js
  # List processes that match "pidgin" (non-Windows)
  ps -ef | grep pidgin
  # Print a list of: function <function-name> and sort it
  grep -Eho "^\s*function \w+" *.js | sort
  # Print filenames, line #s, and lines that start with "(white space)function"
  grep -EHn "^\s*(function \w+|\w+ \= function)" *.js
  # Print only duplicate function names
  grep -hEo "^\s*function \w+" *.js | sort | uniq -d
