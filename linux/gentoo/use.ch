= Use:
== System Globally Use:
    /etc/make.conf

== Declaring USE flags for individual packages
    /etc/portage/package.use
    E.g:
      dev-db/mysql berkdb

== Declare temporary USE flags
   $ USE="-java" emerge seamonkey
