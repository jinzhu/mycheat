= Emerge:
== Updating the Portage Tree:
   emerge --sync
   emerge-webrsync

== Update System::
=== Updating your System:
      emerge --update --ask world
=== Updating your entire system
     emerge --update --deep world
=== Performing a full update
     emerge --update --deep --newuse world

== Search:
=== Search for packages (package names only): --search (-s)
    emerge -s keyword
=== Search for packages (using their description): --searchdesc (-S)
    emerge -S keyword

== Uninstalling:  --unmerge (-C)
  emerge -C package
  emerge --unmerge gnumeric
== Removing orphaned dependencies
  emerge --update --deep --newuse world
  emerge --depclean
  revdep-rebuild  (provided by the gentoolkit)

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

== Finding Installed Package Documentation:
=== Checking the existence of a doc USE flag:
      emerge -vp alsa-lib
      [ebuild  N    ] media-libs/alsa-lib-1.0.14_rc1  -debug +doc 698 kB
=== Locating package documentation
      ls -l /usr/share/doc/alsa-lib-1.0.14_rc1
      equery files alsa-lib | less

== Installing the gnumeric prebuilt package
    emerge --usepkg --getbinpkg gnumeric

    Setting PORTAGE_BINHOST in /etc/make.conf
    PORTAGE_BINHOST="ftp://buildhost/gentoo"

