= FileSystem:
== Filesystem Analysis:
  $ badblocks -v /dev/hda1      check bad blocks in disk hda1
  $ fsck /dev/hda1              repair / check integrity of linux filesystem on disk hda1
  $ fsck.ext2 /dev/hda1         repair / check integrity of ext2 filesystem on disk hda1
  $ e2fsck /dev/hda1            repair / check integrity of ext2 filesystem on disk hda1
  $ e2fsck -j /dev/hda1         repair / check integrity of ext3 filesystem on disk hda1
  $ fsck.ext3 /dev/hda1         repair / check integrity of ext3 filesystem on disk hda1
  $ fsck.vfat /dev/hda1         repair / check integrity of fat filesystem on disk hda1
  $ fsck.msdos /dev/hda1        repair / check integrity of dos filesystem on disk hda1
  $ dosfsck /dev/hda1           repair / check integrity of dos filesystems on disk hda1

== Format a Filesystem:
  $ mkfs /dev/hda1              create a filesystem type linux on hda1 partition
  $ mke2fs /dev/hda1            create a filesystem type linux ext2 on hda1 partition
  $ mke2fs -j /dev/hda1         create a filesystem type linux ext3 (journal) on hda1 partition
  $ mkfs -t vfat 32 -F /dev/hda1  create a FAT32 filesystem
  $ fdformat -n /dev/fd0        format a floppy disk
  $ mkswap /dev/hda3            create a swap filesystem

== SWAP filesystem:
  $ mkswap /dev/hda3            create a swap filesystem
  $ swapon /dev/hda3            activating a new swap partition
  $ swapon /dev/hda2 /dev/hdb3  activate two swap partitions
