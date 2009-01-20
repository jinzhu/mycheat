= Scrot:
== Argument:
    -s, --select       select region
    -b, --border       Use with -s,When selecting a window, grab wm border too
    -c, --count        show a countdown before taking the shot
    -q, --quality NUM  Image quality (1-100). Default: 75.
    -d, --delay NUM    wait NUM seconds
    -e, --exec APP     run APP on the resulting screenshot(see SPECIAL STRINGS)
      e.g:   scrot -e 'mv $f ~/images'
    -m, --multidisp    For multiple heads, grab shot from each and join them together.
    -t, --thumb NUM    generate thumbnail too. NUM is the percentage.

== SPECIAL STRINGS:
   $f image path/filename (ignored when used in the filename)
   $m thumbnail path/filename
   $n image name (ignored when used in the filename)
   $s image size (bytes) (ignored when used in the filename)
   $p image pixel size
   $w image width
   $h image height
   $t image format
   $$  prints a literal '$'

== Example:
   $ scrot -bs ~/abc.png
   $ scrot -s ~/abc.png
   $ scrot -cd 10 ~/abc.png
   $ scrot -t 20% -s ~/abc.png
   $ scrot -s ~/abc.png -e 'gimp $f'
   $ scrot '%Y-%m-%d_$wx$h_scrot.png' -e 'mv $f ~/images/shots/'
     Creates a file called something like 2000-10-30_2560x1024_scrot.png
