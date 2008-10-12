= tar: |-

== To extract:
  $ tar zxf file.tar.gz
  $ tar zxf file.tgz
  $ tar jxf file.tar.bz2
  $ tar jxf file.tbz2

== To Create Archive:
  $ tar zcf file.tar.gz [file]
  $ tar zcf file.tgz [file]
  $ tar jcf file.tar.bz2 [file]
  $ tar jcf file.tbz2  [file]
  
  Some common arguments
  $ tar -j (--bzip)
  $ tar -v (--verbose)
  $ tar -z (--gzip)
  $ tar -x (--extract)
  $ tar -c (--create)
  $ tar -t (--list)
  $ tar -f (--file)
  $ tar -p (--preserve)
  $ tar --ignore-failed-read
  $ tar --totals (prints total bytes written with --create.
