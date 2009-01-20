= Xbindkeys:
  xbindkeys is a program that allows you to launch shell commands with your keyboard or your mouse under X Window. 
== USAGE:
    -V, --version         Print version and exit
    -d, --defaults        Print a default rc file
    -f, --file            Use an alternative rc file
    -X, --display         Set X display to use
    -v, --verbose         More information on xbindkeys when it run
    -s, --show            Show the actual keybinding
    -k, --key             Identify one key pressed
    -mk,--multikey        Identify multi key pressed
    -g, --geometry        size and position of window open with -k|-mk option
    -n, --nodaemon        don't start as daemon

== .xbindkeysrc example:
  "terminal"
    Control + Alt + t
  "xscreensaver-command -lock"
    Control + Alt + l
  "amixer sset Master 2+ unmute"
    m:0x4 + c:176
  "amixer sset Master 2- unmute"
    m:0x4 + c:174
