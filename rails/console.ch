= Console:
== Specifying console environment (defaults to development):
  $ script/console production

== Reloading the Console Environment:
  >> reload!
  
== Start in a sandbox:
  $ ./script/console -s
  
== Load and execute a Ruby script:
  >> load "the_file_name.rb"
  
== Using app object:
  >> app.get '/stories/10002'
  => 200
  >> app.assigns(:story)
  => #<Story:0x24aad0c ... >
  >> app.path
  => "/stories/10002" 
  >> app.reset!
  => nil
  
== Using helpers methods:
  >> helper.pluralize 2, "story" 
  => "2 stories"
  
== Examine Routes:
  rs = ActionController::Routing::Routes
  puts rs.routes
  rs.recognize_path "/session"
  rs.generate :controller => "users", :action => "edit", :id => "4"
