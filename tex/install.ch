= Tex Install:
== Install:
=== Arch:
  $ sudo pacman -S texlive-core texlive-latexextra
=== Gentoo:
  $ sudo emerge app-text/texlive-core  (USE + xetex)

== Zhcon / XeCJK:
  http://bbs.ctex.org/viewthread.php?tid=40232
  http://code.google.com/p/zhspacing/

  Extract into the Texlive install path (e.g: /usr/share/texmf-var/tex/)
  $ sudo mktexlsr

=== Gentoo:
  layman/gentoo-china
  $ sudo emerge zhcon xecjk

== Fonts:
  $ fc-cache
  $ fc-list :lang=zh-cn

=== CMU Serif
   http://canopus.iacp.dvo.ru/~panov/cm-unicode/install.html
