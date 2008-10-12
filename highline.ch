= highline: "##############################################################################

  agree( yes_or_no_question, character = nil )           # return boolean 

  ask( question, answer_type = String ) {|question| ...} # string by default

  choose( *items, &details )                             # string

  list( items, mode = :rows, option = nil )              # string
   # Other modes available :columns_across , :columns_down and :inline

  ##############################################################################
                     ##  FROM THE HIGHLINE RDOC  ##

== Basic usage:

  
  ask(\"Company?  \") { |q| q.default = \"none\" }

  

== Validation:

  
  ask(\"Age?  \", Integer) { |q| q.in = 0..105 }
  ask(\"Name?  (last, first)  \") { |q| q.validate = /\\A\\w+, ?\\w+\\Z/ }

  

== Type conversion for answers:

  
  ask(\"Birthday?  \", Date)
  ask(\"Interests?  (comma sep list)  \", lambda { |str| str.split(/,\\s*/) })

  

== Reading passwords:

  
  ask(\"Enter your password:  \") { |q| q.echo = false }
  ask(\"Enter your password:  \") { |q| q.echo = \"x\" }

  

== ERb based output (with HighLine\xE2\x80\x99s ANSI color tools):

  
  say(\"This should be <%= color('bold', BOLD) %>!\")

  

== Menus:

  
  choose do |menu|
    menu.prompt = \"Please choose your favorite programming language?  \"

  
    menu.choice(:ruby) { say(\"Good choice!\") }
    menu.choices(:python, :perl) { say(\"Not from around here, are you?\") }
  end
"
