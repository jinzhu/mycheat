= Tee:
== tee [-ai][--help][--version]
    -a
    --append  Append to the given FILEs, do not overwrite.
    -i    ignore interrupt signals.

    e.g:
      echo hello | tee /dev/tty count.txt

    /dev/tty (terminal) will be copy two time
