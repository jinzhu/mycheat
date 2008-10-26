= Fstab:
== Example:
  \#device name   mount point     fs-type     options                            dump-freq pass-num
  LABEL=/         /               ext3        defaults                                   1 1
  /dev/hda6       swap            swap        defaults                                   0 0
  none            /dev/pts        devpts      gid=5,mode=620                             0 0
  none            /proc           proc        defaults                                   0 0
  none            /dev/shm        tmpfs       defaults                                   0 0

  \# Removable media
  /dev/cdrom      /mount/cdrom    udf,iso9660 noauto,owner,kudzu,ro                      0 0
  /dev/fd0        /mount/floppy   auto        noauto,owner,kudzu                         0 0

  \# NTFS Windows XP partition
  /dev/hda1       /mnt/WinXP      ntfs-3g     quiet,defaults,locale=en_US.utf8,umask=0   0 0

  \# Partition shared by Windows and Linux
  /dev/hda7       /mnt/shared     vfat        umask=000                                  0 0

  \# mounting tmpfs
  tmpfs           /mnt/tmpfschk    tmpfs      size=100m                                  0  0
== Options:
  auto= mounted at boot
  noauto= not mounted at boot

  user= when mounted the mount point is owned by the user who mounted the partition
  users= when mounted the mount point is owned by the user who mounted the partition and the group users
  nouser - Only permit root to mount the filesystem. This is also a default setting.

  ro= read only
  rw= read/write
  defaults = rw, suid, dev, exec, auto, nouser, and async.

  dev/nodev - Interpret/Do not interpret character or block special devices on the file system.
  exec / noexec - Permit/Prevent the execution of binaries from the filesystem.
  suid/nosuid - Permit/Block the operation of suid, and sgid bits.
  _netdev - this is a network device, mount it after bringing up the network. Only valid with fstype nfs.

== FS-type:
  ext2 and ext3
  reiserfs
  swap
  vfat and ntfs
  auto: The option "auto" simply means that the filesystem type is detected automatically.

== Dump-freq Pass-num:
  The 5th column in /etc/fstab is the dump option. Dump checks it and uses the number to decide if a filesystem should be backed up. If it's zero, dump will ignore that filesystem. If you take a look at the example fstab, you'll notice that the 5th column is zero in most cases.

  The 6th column is a fsck option. fsck looks at the number in the 6th column to determine in which order the filesystems should be checked. If it's zero, fsck won't check the filesystem.
