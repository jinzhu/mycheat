= Monit:
  top                   display linux tasks using most cpu
  ps -eafw              displays linux tasks
  pstree                mostra un albero dei processi sistema Shows a tree system processes
  kill -9 ID_Processo   force closure of the process and finish it
  kill -1 ID_Processo   force a process to reload configuration
  lsof -p $$            display a list of files opened by processes
  lsof /home/user1      displays a list of open files in a given path system
  last reboot           show history reboot

  lsmod                 display kernel loaded
  free -m               displays status of RAM in megabytes

  smartctl -A /dev/hda    monitoring reliability of a hard-disk through SMART
  smartctl -i /dev/hda    check if SMART is active on a hard-disk
  tail /var/log/dmesg     show events inherent to the process of booting kernel
  tail /var/log/messages  show system events

  strace -c ls >/dev/null         display system calls made and received by a process
  ps -e -o pid,args --forest      displays linux tasks in a hierarchical mode

  strace -f -e open ls >/dev/null         display library calls
  watch -n1 'cat /proc/interrupts'        display interrupts in real-time
