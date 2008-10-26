= Emerge:
== Updating the Portage Tree:
   emerge --sync
   emerge-webrsync

== Search:
=== Search for packages (package names only): --search (-s)
    emerge -s keyword
=== Search for packages (using their description): --searchdesc (-S)
    emerge -S keyword

== Uninstalling:  --unmerge (-C)
  emerge -C package

== Pretending: --pretend (-p)
  emerge -p package

== Only fetch sourcefiles,download only:
  emerge -f package

== Cleans  up the system : --clean (-c)

== use binary packages:
=== Tells emerge to use binary packages (from $PKGDIR) if they are available: --usepkg (-k)
    emerge -k mozilla
    emerge --usepkg mozilla
===  Tells emerge to only use binary packages (from $PKGDIR).  --usepkgonly (-K)
    emerge -K mozilla
    emerge --usepkgonly mozilla
