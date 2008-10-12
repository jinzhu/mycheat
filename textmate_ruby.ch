= textmate_ruby: "\xE2\x8C\x98 = command
  \xE2\x8C\x83 = control
  \xE2\x8C\xA5 = option
  \xE2\x87\xA7 = shift

  Ruby keyboard shortcuts

  Run current line         \xE2\x87\xA7 \xE2\x8C\x83 E
  Run current document     \xE2\x8C\x98 R
  Run single unit test     \xE2\x8C\x98 \xE2\x87\xA7 R

  NAVIGATING:\n \xE2\x8C\x98 ^ T\tFind  \xE2\x8C\x98\n \xE2\x8C\x98 T\t\tFind file in project by name (type name or acronym for file)\n \xE2\x8C\x98 \xE2\x87\xA7 T\t\tGo to Symbol\n \xE2\x8C\x98 1 / 2 \tSwitch to that number tab in Text\n \xE2\x8C\x98 F2\t\tToggle Bookmark
  F2\t\t\tCycle Bookmarks
  F1\t\t\tToggle Fold

  SELECTING:\n ^ W\t\tSelect current word\n \xE2\x8C\x98 \xE2\x87\xA7 L\t\tSelect current line\n \xE2\x8C\x98 \xE2\x87\xA7 B\t\tSelect enclosed braces\n \xE2\x8C\x98 ^ B\t\tSelect current scope

== EDITING:
  Escape\t\tTab completion of variables / strings\n \xE2\x8C\x98 Enter\tGo to end of line and return\n \xE2\x8C\x98 \xE2\x87\xA7 V\t\tPaste previous item in clipboard history\n \xE2\x8C\x98 ^ \xE2\x8C\xA5 V\tSelect from Clipboard\n \xE2\x8C\x98 ^ A\t\tEdit Multiple Lines\n ^ U\t\tUpcase\n ^ \xE2\x87\xA7 U\t\tDowncase\n ^ \xE2\x8C\xA5 U\t\tTitleCase\n ^ \xE2\x8C\xA5 Q\t\tUnwrap line, remove newlines\n ^ K\t\tKill all text to end of line\n ^ Y\t\tYank back all text from kill\n ^ D\t\tDelete character (not backspace)

  SEARCH & REPLACE:\n ^ S\t\tLive Search / Find Next\n ^ \xE2\x87\xA7 S\t\tFind Previous\n \xE2\x8C\x98 F\t\tFind\n \xE2\x8C\x98 \xE2\x87\xA7 F\t\tFind in Project

  COMMENTING, QUOTING, AND INDENTING:\n \xE2\x8C\x98 /\t\tComment Toggle\n ^ \"\t\tSingle/Double Quotes Toggle\n \xE2\x8C\x98 ]\t\tIndent Selection\n \xE2\x8C\x98 [\t\tUn-indent Selection\n \xE2\x8C\x98 \xE2\x8C\xA5 [\t\tReindent

  CTAGS:\n ^ ]\t\tLookup Definition\n  \xE2\x8C\x98 ^ B\t\tSource Browser

  WEB:\n  \xE2\x8C\x98 ^ \xE2\x8C\xA5 P\tWeb Preview\n  \xE2\x8C\x98 ^ \xE2\x87\xA7 W \tUpdate missing tags for all lines\n ^ \xE2\x87\xA7 <\t\tCreate tags\t(HTML)\n ^ Enter\t<br/>\n ^ \xE2\x87\xA7 L\t\tWrap selection as Link\n doctype-tabDocument Type Section\n head-tab\n body-tab\n table-tab\n  \xE2\x8C\x98-&\t\tMenu for URL

  COMMAND LINE:\n find {app,lib} -name '*.rb' -o -name '*.rhtml' -print0 | xargs -0 mate

  RUBY:\n ^H\t\t\tDocumentation for word\n ^{\t\t\tToggle do/end {/}\n ^|\t\t\tInstall Plugin, Dump DB, etc. Menu\n %\t\t\tEval as Ruby (not in output)\n  \xE2\x8C\x98 R\t\tRun Ruby Script\n ^ \xE2\x87\xA7 E\t\tExecute Line as Ruby\n ^ \xE2\x87\xA7 \xE2\x8C\x98 E\tExecute all lines marked with '# =>' as Ruby\n R-tab\t\tattr_reader\n W-tab\t\tattr_writer\n RW-tab \tattr_accessor \n def-tab\tdefine method\n if-tab\n case-tab\n cla-tab\n mod-tab\n ea-tab\n eawi-tab

  RAILS MIGRATIONS:\n mccc-tab\tCreate Several Columns\n mcol-tab\tColumn Menu\n mtab-tab\tTable Menu

  RAILS VIEWS:\n ^ \xE2\x87\xA7 V\t\t<%= %> Insert (and Toggle)\n ^ \xE2\x87\xA7 H\t\tCreate partial from selection

  RAILS CONTROLLERS:\n ^ P\t\tparams\n ^ J\t\tsession\n \xE2\x8C\x98 \xE2\x87\xA7 \xE2\x8C\xA5 Down\tJump to Controller helper/test/view/etc.

  SUBVERSION:\n ^ \xE2\x87\xA7 A\t\tSVN Menu\n  1\t\t\tAdd\n  2\t\t\tRemove\n  3\t\t\tRevert\n  5\t\t\tCommit\n  6\t\t\tBlame\n  7\t\t\tInfo\n  8\t\t\tLog\n  9\t\t\tView Revision\n  0\t\t\tStat

  SHELL:\n ^R\t\t\tRun Current Line in the Shell"
