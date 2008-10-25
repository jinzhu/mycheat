= Bash Redirection: 
== Input and Output Redirection:
    STDIN can be redirected with the less than sign (<),
    STDOUT can be redirected with either one or two greater than signs (> or >>). To append the standard output to an existing file, you must use two greater than signs in a row, like so: >>.

== I/O streams numbers:
    0        stdin   Standard input
    1       stdout  Standard output
    2       stderr  Standard error

== Redirecting the standard error stream to a file:
  $ command1 2> error.log

== Redirect stdout to a file:
  $ ls 1> file
  $ ls > file
  Since the default file descriptor for output redirection is fd1, the first form can be abbreviated to the second which is just like csh

== Redirect stdin from a file:
  $ wc 0< file
  $ wc < file
  Since the default file descriptor for input redirection is fd0, the first form can be abbreviated to the second which is just like csh

== Redirect stdin from text:
  $ wc << END
  This is some text
  that will be counted
  by wc(1).
  END

== Redirect stderr to a file:

  $ ls 2> file

  This redirects just stderr output (associated with fd2) to the file. stdout is unchanged. Can't be done in csh.

== Redirect both stdout and stderr to a file:

  $ ls > file 2>&1

  First the "> file" indicates that stdout should be sent to the file, then the "2>&1" indicates that stderr (fd2) should be sent to the same place as stdout (fd1).

  To append to the file, only the stdout redirection must change since stderr is just hitching a lift on whatever stdout is doing.
  $ ls >> file 2>&1

== Redirect stdout to one file and stderr to another:

  $ command-name &>file
  $ ls > file 2> file2

  Try doing that in csh! (Actually, it can be done, but you have to spawn a subshell)

== Pipe one process' stdout to another's stdin:

  $ ls | wc

  Just like csh, but note that there is no analog to the csh "|&". See below for how to accomplish the same thing in Bourne shell.

== Pipe one process' stdout and stderr to another's stdin

  $ ls 2>&1 | wc

  Here we combine stderr onto the stdout stream, then use "|" to pipe the result to the next process.
