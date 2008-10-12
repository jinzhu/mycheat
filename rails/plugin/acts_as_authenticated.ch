= acts_as_authenticated: "See: http://technoweenie.stikipad.com/plugins/show/User+Authentication"

  

== Install:

  >> ruby script/plugin source http://svn.techno-weenie.net/projects/plugins

  >> ruby script/plugin install acts_as_authenticated

  

== Generate:

  >> ruby script/generate authenticated user account

  >> rake db:migrate

  

== To require logins for all actions, use this in your controllers:
  before_filter :login_required

  

== To require logins for specific actions, use this in your controllers:
  before_filter :login_required, :only => [ :edit, :update ]

  

== To skip this in a subclassed controller:
  skip_before_filter :login_required

  

== Here are other available methods for your views and controllers:
    * logged_in? \xE2\x80\x93 Returns true if the user is currently logged in.
    * current_user \xE2\x80\x93 Returns an instance of the currently logged in user.

  

== You can override the #protect? method in your controller to only protect certain actions:

  
  \# don't protect the login and the about method
  def protect?(action)
    if ['login', 'about'].include?(action)
       return false
    else
       return true
    end
  end

  

== You can also override #authorized? in your controller to restrict the actions based on the user:

  
  \# only allow nonbobs
  def authorized?(user)
    user.login != \"bob\" 
  end
