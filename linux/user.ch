= Linux,User,Group:
== Add a normal user:
   adduser -g users -G lp,wheel,cdrom,portage,cron -m mvp

== Adding a user to a group:
   gpasswd -a username wheel
