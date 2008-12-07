= SSH:
== Create:
  $ ssh-keygen -t dsa/rsa

== Changing your pass-phrase
  $ ssh-keygen -p

== SSH config:
  Host mvp
      HostName zhangjinzhu.com
      User username
      Compression yes
      IdentityFile [local path to private key half of github public key you provided]
      Protocol 2

== Authenticating via key pair (password-less)
  $ scp ~/.ssh/id_dsa.pub username@zhangjinzhu.com:
  $ ssh username@zhangjinzhu.com
  $ cat id_dsa.pub >> ~/.ssh/authorized_keys2
  $ chmod 0600 $HOME/.ssh/authorized_keys2
  $ cd ~/.ssh && ln -s authorized_keys2 authorized_keys
