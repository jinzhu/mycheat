= Switch Caps/Ctrl:

== X:
 .Xmodmap 
   remove Lock = Caps_Lock
   keysym Caps_Lock = Control_L
   add Control = Control_L

 /etc/X11/xorg.conf
   Switch : 
     ADD:
     Option "XkbOptions" "ctrl:swapcaps"
   NO Caps:
     ADD:
     Option "XkbOptions" "ctrl:nocaps"

== Terminal:
  #!/bin/bash

  SCAN_CTRL='0x1d'
  SCAN_CAPS='0x3a'

  KEY_CTRL=29
  KEY_CAPS=58

  if [ "$1" = "" ]; then
    echo "Swaping Caps and Ctrl"
    setkeycodes $SCAN_CTRL $KEY_CAPS
    setkeycodes $SCAN_CAPS $KEY_CTRL
  fi

  if [ "$1" = "r" ]; then
    echo "Restore to normal"
    setkeycodes $SCAN_CAPS $KEY_CAPS
    setkeycodes $SCAN_CTRL $KEY_CTRL
  fi

  if [ "$1" = "a" ]; then
    echo "Assign Ctrl to Caps"
    setkeycodes $SCAN_CAPS $KEY_CTRL
  fi

== Other OS:
  http://www.manicai.net/comp/swap-caps-ctrl.html
