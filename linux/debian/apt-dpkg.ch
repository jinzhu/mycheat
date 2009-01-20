= Apt:
== APT:
  apt-get install package_name       install / upgrade a deb package
  apt-cdrom install package_name     install / upgrade a deb package from cdrom
  apt-get remove package_name        remove a deb package from system

  apt-get update                     update all deb packages installed on system
  apt-get upgrade / dist-upgrade     Update system

  apt-get check                      verify correct resolution of dependencies
  apt-get clean                      clean up cache from packages downloaded

  apt-cache search keyword / pattern Search
  apt-cache show package_name        Show Package
  apt-file search path               Search by file name

== dpkg:
  dpkg -i package.deb             install / upgrade a deb package
  dpkg -l                         show all deb packages installed on the system
  dpkg -r package_name            remove a deb package from the system
  dpkg -s package_name            obtain information on a specific package installed on system
  dpkg -L package_name            show list of files provided by a package installed on system
  dpkg --contents package.deb     show list of files provided by a package not yet installed
  dpkg -S /bin/ping               verify which package belongs to a given file
