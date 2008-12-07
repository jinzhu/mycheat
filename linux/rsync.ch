= Rsync:
== Access via remote shell:
  Pull: rsync [OPTION...] [USER@]HOST:SRC... [DEST]
  Push: rsync [OPTION...] SRC... [USER@]HOST:DEST

  e.g:
  $ rsync local_dir mvp:~/remote_dir/ -rv
