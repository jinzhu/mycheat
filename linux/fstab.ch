= Fstab:
== Example:
 <file system>   <dir>          <type>      <options>          <dump> <pass>
 /dev/sda1       /              ext3        defaults              1    1

 /dev/hda6       swap           swap        defaults              0    0
 none            /dev/pts       devpts      gid=5,mode=620        0    0
 none            /proc          proc        defaults              0    0
 none            /dev/shm       tmpfs       defaults              0    0

 /dev/cdrom      /mount/cdrom   udf,iso9660 noauto,owner,kudzu,ro 0    0
 /dev/fd0        /mount/floppy  auto        noauto,owner,kudzu    0    0

 /dev/hda7       /mnt/shared    vfat        umask=000             0    0

 tmpfs           /mnt/tmpfschk  tmpfs       size=100m             0    0

 /dev/hda1       /mnt/winxp     ntfs-3g     quiet,defaults        0    0

== Options:
  auto      mounted at boot
  noauto    not mounted at boot

  ro        read only
  rw        read/write
  defaults  rw, suid, dev, exec, auto, nouser, and async.

== FS-type:
  ext2,ext3,reiserfs,swap,vfat,ntfs,auto

== Dump-freq Pass-num:
  The 5th column is the dump option. Dump checks it and uses the number to decide if a filesystem should be backed up.
  If zero, dump will ignore that filesystem.

  The 6th column is a fsck option. fsck looks at the number in the 6th column to determine in which order the filesystems should be checked.
  If zero, fsck won't check the filesystem.
