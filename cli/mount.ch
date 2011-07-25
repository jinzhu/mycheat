= Mount:
== Mount:
  $ mount [-fnrsvw] [-t vfstype] [-o options] device dir
E.g:
  $ sudo mount /dev/fd0 /mnt/floppy             mount a floppy disk
  $ sudo mount /dev/cdrom /mnt/cdrom            mount a cdrom / dvdrom
  $ sudo mount /dev/hdc /mnt/cdrecorder         mount a cdrw / dvdrom
  $ sudo mount /dev/hdb /mnt/cdrecorder         mount a cdrw / dvdrom
  $ sudo mount -o loop file.iso /mnt/cdrom      mount a file or iso image
  $ sudo mount -o remount,rw /
  $ sudo mount -t vfat -o utf8 /dev/sdb /mnt/disk
  $ sudo mount -t ntfs /dev/sdb /mnt -o charset=utf8,umask=022

  $ sudo mount --bind /mnt/productimages/ /mnt/upload/productimages

== Mount NFS
  # /etc/exports
    //home/test      192.168.0.0/24(rw,async,no_root_squash)
  service nfs start
  $ mount -t nfs 10.1.1.2:/home/test /mnt/nfs 

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
