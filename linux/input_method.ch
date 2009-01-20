= Input Method:
== Scim / Ubuntu:
  $ sudo im-switch -z en_US -s scim
== Fcitx / Ubuntu:
  $ im-switch -s fcitx
  Then:
  $ sudo vi /etc/gtk-2.0/gtk.immodules
  Modify 
    "xim" "X Input Method" "gtk20" "/usr/share/locale" "ko:ja:th:zh"
  To
    "xim" "X Input Method" "gtk20" "/usr/share/locale" "en:ko:ja:th:zh"

== Fcitx / Gentoo:
  Modify /etc/environment, Add Below:
    LC_CTYPE="zh_CN"

== Fcitx / Arch:
  ~/.bashrc
  $ export LC_CTYPE=zh_CN.utf8
  $ export GTK_IM_MODULE=xim
  $ export QT_IM_MODULE=xim
  $ export XMODIFIERS="@im=fcitx"

  ~/.xprofile
  $ fcitx &
