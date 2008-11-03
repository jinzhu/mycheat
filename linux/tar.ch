= tar rar zip: |-

== Tar:
=== To extract:
  $ tar zxf file.tar.gz
  $ tar zxf file.tgz
  $ tar jxf file.tar.bz2
  $ tar jxf file.tbz2
=== To Create Archive:
  $ tar zcf file.tar.gz [file]
  $ tar zcf file.tgz [file]
  $ tar jcf file.tar.bz2 [file]
  $ tar jcf file.tbz2  [file]

== rar:
=== To extract:
  $ rar x file.rar      Extract files with full path
  $ rar e file.rar      Extract files to current directory

=== To Create Archive:
  $ rar a file.rar files

=== Other:
  $ rar r file.rar      Repair archive
  $ rar l file.rar      List archive
  $ rar c file.rar      Add archive comment

== Zip:
  $ zip file1.zip file1                create an archive compressed in zip
  $ zip -r file1.zip file1 file2 dir1  compress in zip several files and directories simultaneously
  $ unzip file1.zip                    decompress a zip archive
