= Gentoo Masked:
== Setting the ACCEPT_KEYWORDS variable
  ACCEPT_KEYWORDS="~x86"

== Modify package.keywords (/etc/portage/package.keywords ):
  app-office/gnumeric ~x86
  @You can also enter a version range using the <=, <, > or >= operators.@
  e.g: =app-office/gnumeric-1.2.13 ~x86

== Modify package.unmask (/etc/portage/package.unmask):
  =net-mail/hotwayd-0.8

== Modify package.mask (/etc/portage/package.mask):
  >sys-kernel/gentoo-sources-2.6.8.1
