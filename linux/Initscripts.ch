= Initscripts:
== Init Scripts:
  all scripts in /etc/init.d

== rc-update:
  rc-update add script <runlevels>
  rc-update del script [runlevels]
  rc-update show [--verbose] [runlevels]

== Working with the Init Scripts:
=== Starting Postfix:
     /etc/init.d/postfix start
=== Stopping Postfix but keep the depending services running:
     /etc/init.d/postfix pause
=== Status information for postfix:
     /etc/init.d/postfix status
 
=== Resetting status information for postfix:
     /etc/init.d/postfix zap

=== Requesting a list of all necessary services on which Postfix depends:
     /etc/init.d/postfix ineed
 
=== Requesting a list of all services that require Postfix:
     /etc/init.d/postfix needsme
 
=== Requesting a list of missing dependencies for Postfix:
     /etc/init.d/postfix broken

== Basic layout of an init script:

  \#!/sbin/runscript

    depend() {
        (Dependency information)
    }

    start() {
        (Commands necessary to start the service)
    }

    stop() {
        (Commands necessary to stop the service)
    }

    restart() {
        (Commands necessary to restart the service)
    }

    @@@Dependency@@@
     depend() {
         need <net>
         use <logger dns>
         provide <mta>
         before inetd
         before *
         after bootmisc
     }
     
== More:
  http://www.gentoo.org/doc/en/handbook/handbook-x86.xml?part=2&chap=4
