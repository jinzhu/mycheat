= console: "Special Variables:

  

  app

  helper

  

== Specifying console environment (defaults to development):

  

  $ script/console production

  $ script/console test

  $ script/console development

  

== Loading a session for debugging:

  

  >> session = Marshal.load(File.open(\xE2\x80\x99tmp/sessions/ruby_sess.8eb9614a7e4e1e3b\xE2\x80\x99))

  => {\xE2\x80\x9Dhash\xE2\x80\x9D=>{:cart=\xE2\x80\xA6

  >> cart = session[\xE2\x80\x9Dhash\xE2\x80\x9D][:cart]

  

== Reloading the console:

  

  >> reload!

  

  

== Rollback all database changes on exit:

  

  $ script/console --sandbox 

  Loading development environment in sandbox.

  Any modifications you make will be rolled back on exit.

  >>

  

== To maintain history across console sessions, add the following to ~/.irbrc:

  

  require 'irb/ext/save-history'

  IRB.conf[:SAVE_HISTORY] = 100

  IRB.conf[:HISTORY_FILE] = \"#{ENV['HOME']}/.irb-save-history\"

  

== See also:

  

  $ cheat rails_console"
