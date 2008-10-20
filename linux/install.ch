= Install:
== Disc Install ubuntu
  title install-ubuntu8.04
  root (hd0,3)
  kernel /vmlinuz boot=casper iso-scan/filename=/ubuntu-8.04-desktop-i386.iso quiet ro nolapic
  initrd /initrd.gz

== Disc Install fedora
  kernel (hd0,3)/vmlinuz0 root=/dev/sda4
  initrd (hd0,3)/initrd.img
