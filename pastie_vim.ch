= pastie_vim: "pastie.vim: Vim plugin for pastie.caboo.se

  Maintainer: Tim Pope <vimNOSPAM@tpope.info>

  URL:        http://www.vim.org/scripts/script.php?script_id=1624

  

== Installation:

  Place in ~/.vim/plugin or vimfiles/plugin

  A working ruby install is required (Vim interface not necessary).

  

  :Pastie                   Create a paste from all open windows

  :Pastie!                  Create a paste from all open windows and paste it

  :1,10Pastie               Create a paste from the specified range

  :%Pastie                  Use the entire current file to create a new paste

  :Pastie foo.txt bar.txt   Create a paste from foo.txt and bar.txt

  :Pastie! foo.txt          Paste directly from foo.txt

  :Pastie a                 Create a paste from the \"a register

  :Pastie @                 Create a paste from the default (unnamed) register

  :Pastie *                 Create a paste from the primary selection/clipboard

  :Pastie _                 Create a new, blank paste

  :768Pastie                Load existing paste 768

  :0Pastie                  Load the newest paste

  :Pastie http://pastie.caboo.se/768            Load existing paste 768

  :Pastie http://pastie.caboo.se/123456?key=... Use login from pastie bot

  

  At the shell you can directly create a new pastie with a command like

  $ vim +Pastie

  or, assuming no other plugins conflict

  $ vim +Pa

  And, to read an existing paste

  $ vim +768Pa

  You could even paste a file directly

  $ vim '+Pa!~/.irbrc' +q

  You can even edit a pastie URL directly, but this is not recommended because

  netrw can sometimes interfere.

  

  Lines ending in #!! will be sent as lines beginning with !!.  This alternate

  format is easier to read and is less likely to interfere with code

  execution.  In Vim 7 highlighting is done with :2match (use \":2match none\"

  to disable it) and in previous versions, :match (use \":match none\" to

  disable)."
