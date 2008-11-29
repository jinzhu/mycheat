= Mount:
== Mount:
  $ mount [-fnrsvw] [-t vfstype] [-o options] device dir
E.g:
  $ mount /dev/hda2 /mnt/hda2           mount disk called hda2 - verify existence of the directory '/ mnt/hda2'
  $ mount /dev/fd0 /mnt/floppy          mount a floppy disk
  $ mount /dev/cdrom /mnt/cdrom         mount a cdrom / dvdrom
  $ mount /dev/hdc /mnt/cdrecorder      mount a cdrw / dvdrom
  $ mount /dev/hdb /mnt/cdrecorder      mount a cdrw / dvdrom
  $ mount -o loop file.iso /mnt/cdrom   mount a file or iso image
  $ mount -o remount,rw /
  $ mount -t vfat -o utf8 /dev/sdb /mnt/disk
  $ mount -t ntfs /dev/sdb /mnt -o charset=utf8,umask=022
  $ mount -t vfat /dev/hda5 /mnt/hda5   mount a Windows FAT32 file system

== Umount:
  $ umount /dev/hda2
      unmount disk called hda2 - exit from mount point '/ mnt/hda2' first
  $ umount -n /mnt/hda2
      run umount without writing the file /etc/mtab - useful when the file is read-only or the hard disk is full

== Other:
  /etc/fstab        file system table
  /etc/mtab         table of mounted file systems
  /etc/mtab~        lock file
  /etc/mtab.tmp     temporary file
  /etc/filesystems  a list of filesystem types to try
