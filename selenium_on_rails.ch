= selenium_on_rails: "See: http://www.openqa.org/selenium-on-rails/

  $ rake test:acceptance
== Installation:
   1. Install Selenium on Rails: script/plugin install http://svn.openqa.org/svn/selenium-on-rails/selenium-on-rails
   2. If you are on Windows, gem install win32-open3
   3. If the RedCloth gem is available the Selenese test cases can use it for better markup.
   4. Run the Rakefile in the plugin's directory to run the tests in order to see that everything works. (If RedCloth isn't installed a few tests will fail since they assume RedCloth is installed.)
   5. Create a test case: script/generate selenium login
   6. Start the server: script/server -e test
   7. Point your browser to localhost:3000/selenium
   8. If everything works as expected you should see the Selenium test runner. The north east frame contains all your test cases (just one for now), and the north frame contains your test case.

  
  FORMATS

  The test cases can be written in a number of formats. Which one you choose is a matter of taste. You can generate your test files by running script/generate selenium or by creating them manually in your /test/selenium directory.
  

== Selenese, .sel:

  Wiki Table.  SeleniumIDE makes it super easy to record test and edit them.
 |open|/selenium/setup|
 |open|/|
 |goBack|

== RSelenese, .rsel:
 setup :fixtures => :all
 open '/'
 assert_title 'Home'
 ('a'..'z').each {|c| open :controller => 'user', :action => 'create', :name => c }
  

  See SeleniumOnRails::TestBuilder for available commands:
  http://svn.openqa.org/fisheye/browse/~raw,r=1000/selenium-on-rails/selenium-on-rails/doc/classes/SeleniumOnRails/TestBuilder.html

  

== HTML/RHTML:

  Use Tables.
  

== PARTIAL test cases:
  filename has to start with an underscore (#_login.rsel)

 |includePartial|login|name=John Doe|password=eoD nhoJ|

 include_partial 'login', :name => 'Jane Doe', :password => 'Jane Doe'.reverse

 <%= render :partial => 'login', :locals => {:name = 'Joe Schmo', :password => 'Joe Schmo'.reverse} %>
