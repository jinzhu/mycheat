= heroku: |-
  Heroku - heroku.com
  
  Still in private beta.  Signup http://heroku.com/beta or get an invite from
  someone.
  
  Once you have an account, and assuming you have a working Git install and a
== valid ssh keypair, you can do:
  
  % sudo gem install heroku
  % heroku list  # enter your heroku account's username and password
  % heroku upload_authkey
  
== Now, let's create a new app:
  % heroku create testapp
  
  Browse to: testapp.heroku.com and you should see the default start page
  You can edit the code through the online editor if you wish.
  
  If not, create a local working environment
  % heroku clone testapp
  
== Make your changes, commit them, then do:
  % git push
  
  The app will restart and automatically deploy your changes.
  
  Pretty sweet, if you ask me.
