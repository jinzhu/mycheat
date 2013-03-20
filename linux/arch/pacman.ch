= Pacman:
== Installing Packages:
=== Synchronize:
  $ pacman -Sy
=== Install or upgrade a single package or list of packages:
  $ pacman -S extra/package_name
  $ pacman -Sy package_name

== Removing Packages:
  $ pacman -R package_name
=== To remove all of the packages dependencies which aren't used by other
  $ pacman -Rs package_name
=== Delete configuration files:
  $ pacman -Rn package_name
  $ pacman -Rsn package_name
=== Force remove a package
  $ pacman -Rdd nvidia

== Upgrading the System:
  $ pacman -Su
  $ pacman -Syu

== Querying the Package Database:
  $ pacman -Ss package

=== To search for already installed packages:
  $ pacman -Qs package

=== Get information about it:
  $ pacman -Si package  
  $ pacman -Qi package

=== To get a list of the files installed by the package:
  $ pacman -Ql package

=== query a file belongs to which package:
  $ pacman -Qo /path/to/a/file

=== List all packages no longer required as dependencies, (orphans):
  $ pacman -Qdt

=== Remove all orphans: (Check output from pacman -Qdt first.)
  $ pacman -Rsn $(pacman -Qdtq)

== Backing Up and Retrieving List of Installed Packages For Quick Software Restore
=== backup the current list of packages:
  $ pacman -Qqe > pkglist

=== Install the all backuped packages:
  $ pacman -S $(cat pkglist)

== Other Usage:
=== Download a package without installing it: 
  $ pacman -Sw package_name

=== Install a local package (not from a repository): 
  $ pacman -U /path/to/package/package_name-version.pkg.tar.gz
  $ pacman -U http://www.examplepackage/repo/examplepkg.tar.gz

=== Fully clean the package cache (/var/cache/pacman/pkg): 
  $ pacman -Scc

=== For removing orphans (recursively): 
  $ pacman -Rs $(pacman -Qtdq)

=== For reinstalling all packages on your system (which are available in a repository): 
  $ pacman -S $(pacman -Qq | grep -v "$(pacman -Qmq)")

=== Help:
  $ pacman -Q --help
  $ pacman -S --help  ...

== WIKI: http://wiki.archlinux.org/index.php/Pacman
