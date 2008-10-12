= rails_edge: "Riding the Edge with EdgeRails

  

  EdgeRails is a term which means you are running a local copy of a developmental version of Rails (i.e., you\xE2\x80\x99re on the bleeding edge).

  

  source:  http://wiki.rubyonrails.org/rails/pages/EdgeRails/

  

== The easy way:
 $ rake rails:freeze:edge
 $ rake rails:unfreeze

  

== As svn:externals (better?):
 $ svn propedit svn:externals vendor
   rails http://svn.rubyonrails.org/rails/trunk

  

  As svn:externals, using a specific revision, which gives you more control - you should figure out what revision is best for your app, of course.
 $ svn propset svn:externals vendor
   rails -r6881 http://svn.rubyonrails.org/rails/trunk

  

== Using Piston (better, still):
 $ piston import http://svn.rubyonrails.org/rails/trunk vendor/rails

  or
 $ piston import --revision=# http://svn.rubyonrails.org/rails/trunk vendor/rails

  

== By GEM:
 $ gem install -s http://gems.rubyonrails.com rails -y
"
