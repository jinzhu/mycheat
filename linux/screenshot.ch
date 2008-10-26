= ScreenShot:
== scrot:
=== Argument:
    -s, --select       interactively choose a window or rectnagle with the mouse
    -b, --border       Use with -s,When selecting a window, grab wm border too
    -c, --count        show a countdown before taking the shot
    -q, --quality NUM  Image quality (1-100) high value means high size, low compression. Default: 75.
    -d, --delay NUM    wait NUM seconds before taking a shot
    -e, --exec APP     run APP on the resulting screenshot,$f is the grabbed image
      EX:   scrot -e 'mv $f ~/images'
    -m, --multidisp    For multiple heads, grab shot from each and join them together.
    -t, --thumb NUM    generate thumbnail too. NUM is the percentage of the original size for the thumbnail to be, or the geometry in percent, e.g. 50x60 or 80x20.
=== SPECIAL STRINGS:
    $f image path/filename (ignored when used in the filename)
    $m thumbnail path/filename
    $n image name (ignored when used in the filename)
    $s image size (bytes) (ignored when used in the filename)
    $p image pixel size
    $w image width
    $h image height
    $t image format
    $$  prints a literal '$'
=== Example:
    scrot -bs ~/abc.png
    scrot -s ~/abc.png
    scrot -cd 10 ~/abc.png
    scrot -t 20% -s ~/abc.png
    scrot -s ~/abc.png -e 'gimp $f'
