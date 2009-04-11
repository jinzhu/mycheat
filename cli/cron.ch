= cron: |-
== Global variables ( /etc/crontab )
  SHELL=/bin/bash
  PATH=/sbin:/bin:/usr/sbin:/usr/bin
  MAILTO=root
  HOME=/

== To edit the crontab of the current user:
  $ crontab -e
  
== To display the crontab of the current user:
  $ crontab -l 
  
== To remove the crontab of the current user:
  $ crontab -r
  
== To edit a users crontab file as root you can run:
  $ crontab -e -u username

== Controlling Access to cron:
  /etc/cron.allow
  /etc/cron.deny

== Basic file format:
  
  *     *   *   *    *  command to be executed
  -     -    -    -    -
  |     |     |     |     |
  |     |     |     |     +----- day of week (0 - 6) (Sunday=0)
  |     |     |     +------- month (1 - 12)
  |     |     +--------- day of month (1 - 31)
  |     +----------- hour (0 - 23)
  +------------- min (0 - 59)

== Example:
=== The astrix '*' is a wildcard meaning that cron will ignore the field. 
=== Lists in the fields.
  e.g.
  59 11 * * 1,2,3,4,5 root backup.sh
  Will run backup.sh at 11:59 Monday, Tuesday, Wednesday, Thursday and Friday,as will:
  59 11 * * 1-5 root backup.sh 
  * 12 1-15,17,20-25 * * root cmd
=== 'Step' values.
  A value of */2 in the dom field would mean the command runs every two days and likewise,
  */5 in the hours field would mean the command runs every 5 hours.
  e.g. 
  * 12 1-7/2 * * root backup.sh
  * is the same as:
  * * 12 1,3,5,7 * * root backup.sh
