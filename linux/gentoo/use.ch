= Use:
== User-defined USE setting:
  /etc/make.conf

== System Globally Use:
  /etc/make.conf
    USE="-qt3 ..."

== Declaring USE flags for individual packages
  /etc/portage/package.use
  e.g:
    dev-db/mysql berkdb

== Declare temporary USE flags
  $ USE="-java" emerge seamonkey
