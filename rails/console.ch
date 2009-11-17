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
  app.get '/stories/10002'
  output = app.html_document.root.to_s
  app.controller.params
  app.session[:user_id]
  app.cookies
  app.response.redirect_url
  app.xml_http_request "/store/add_to_cart", :id => 1
  app.flash
  
== Using helpers methods:
  >> helper.pluralize 2, "story" 
  => "2 stories"
  
== Examine Routes:
  rs = ActionController::Routing::Routes
  puts rs.routes
  rs.recognize_path "/session"
  rs.generate :controller => "users", :action => "edit", :id => "4"
