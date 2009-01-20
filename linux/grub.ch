= Grub:
== install:
  sudo  grub
  find  /boot/grub/stage1
  root  (hd?,?)
  setup (hd0)

== configure:
  timeout   3
  default   3
  color     light-blue/black light-cyan/blue

  title  Arch Linux
  root   (hd0,0)
  kernel /boot/kernel28 root=/dev/sda1 ro acpi=off
  initrd /boot/kernel28.img

  title Windows
  rootnoverify (hd0,0)
  makeactive
  chainloader +1
