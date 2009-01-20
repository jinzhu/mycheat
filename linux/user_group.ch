= Linux,User,Group:
== User:
  $ adduser -g users -G lp,wheel,cdrom,portage,cron -m  -d /home/user1 -s /bin/bash user1
  $ useradd user1               create a new user
  $ userdel -r user1            delete a user ( '-r' eliminates home directory)
  $ usermod -c "User FTP" -g system -d /ftp/user1 -s /bin/nologin user1
    change user attributes

  $ passwd user1        change a user password

== Group:
  $ groupadd group_name                         create a new group
  $ groupdel group_name                         delete a group
  $ groupmod -n new_group_name old_group_name   rename a group

== Adding a user to a group:
  $ sudo gpasswd -a username wheel

== Other:
  $ pwck    check correct syntax and file format of '/etc/passwd' and users existence
  $ grpck   check correct syntax and file format of '/etc/group' and groups existence
