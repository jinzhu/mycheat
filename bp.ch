= bp: "============================
  # the ethnio admin cheat sheet; use it with cheat for optimal happiness: http://errtheblog.com/posts/32-cheat-again
  # version 3.0 by maintainer chris blow august 11, 2008
  # 919 763 5299 is my mothers phone number
  # tell her if wrote something wrong and you are sore about it.
  # otherwise please add yer notes and send it back to me! =\n ============================
n\
  # NOTE: if you see a bug please file it here for now
  # NOTE: if you fix a bug write it down
  # NOTE: do not put passwords in this file 
n ==============================================\n =                BUGS & todos                =\n ==============================================

  BUG: filters break the recruits table. (Per-incident patch - login with mysql and ------ update screeners set filters=NULL where remote_key =12345; )
  BUG: some js problems with reordering questions. Not reproducible reliably. (Per incident patch: blame it on Mozilla or Microsoft)
  BUG: mongrel_restart is broken. 
== BUG:
== BUG:
  BUG: ... add em please

  TODO: upgrade rails\n  1.3 is out and fixes mongrel_restart bug. we should upgrade soon. Also might fix caching extension bug. \n  
  BUG FIXED 08/11: logrotate bug. Logs were not getting rotated correctly because mongrel was not being restarted.\n  Also an unnecessary rake log:clear needed to be removed. Used copytruncate instead. updated the logrotate section with what we are now using (correct per rimuhost techs).

  BUG FIXED 08/11: The last page of the screener displays as plaintext js. \n  This was being caused by apache not handling the POST to the remotes/12345 url (which serves js with a GET using rails REST magic). the fix, in the ethnio.conf:   RewriteCond %{REQUEST_METHOD} POST\n  RewriteRule ^/(.*)$ balancer://ethnio_production_cluster%{REQUEST_URI} [P,QSA,L]
n ===============================================\n =                IN CASE OF EMERGENCY         =\n ===============================================

  ###### worst case scenario\n  # The worst thing that can happen is that ethnio is not down but it is not serving files. \n  # That is, apache is up, but mongrel is down. \n  # You must either stop apache, or (much better) turn off traffic politely with capistrano.
n\
  #TODO ====================================================\n =                      specs                       =\n ====================================================

== current specs:
  apache 2.2
  4 instances of mongrel 1.0 
  ruby 1.8.6
  rails 2.02
  mysql 5.0.22

== apache 2.2. installation configuration:
  ./configure --prefix=/usr/local/apache2 --enable-mods-shared=all \\\n --enable-deflate --enable-proxy --enable-proxy-balancer \\\n --enable-proxy-http --enable-ssl --with-axps2
n\n =================================================\n =                 logrotate                     =\n =================================================

  #### this is the latest logrotate using copytruncate instead of stupid postrotate stuff\n /u/apps/ethnio/shared/log/production.log {\n         weekly\n         missingok\n         rotate 8\n         compress\n         notifempty\n #        postrotate\n #               cd /u/apps/ethnio/current&& rake log:clear\n #        endscript\n         copytruncate\n }
n ============================================\n =      Cruise Control and the CC box       =\n ============================================

  #TODO
n ============================================\n =               performance                =\n ============================================
n\
  ########## all-purpose performance lookup\n  curl -w '\\nlookup time:\\t%{time_namelookup}\\nconnect time:\\t%{time_connect}\\nprexfer time:\\t%{time_pretransfer}\\nstartxfer time:\\t%{time_starttransfer}\\ntotal time:\\t%{time_total}\\n' -o /dev/null http://ethniodev.com/remotes/17436

  ########## check the number of apache clients: \n  pgrep -c httpd (should be well less than the max set in the relevant conf)

  ########## check memory: \n  free -m\n  #(the cached amount should be at least 500, its measured in mb)

  ########## benchmark (best done from the local machine)\n  ab -n 5000 -c 50 http://ethnio.com/remotes/30090\n  # (reqs. per second should be like 800 or something big like that)

  ########## using profiler (easy but often unintelligible imo)\n  script/performance/profiler 'screener.find_by_id(1).filtered_recruits' 

  ########## using benchmarker\n  # make sure you first set the environment var. \n  export rails_perf_data=/path/to/ethnio's/log/directory  #run everything\n    railsbench perf_run 10   #also see\n    railsbench perf_run 10 -bm=remotes.edit --log  #and edit \n    /config/benchmarks.rb\n    /config/benchmarks.yml ===============================================\n =                  subversion                 =\n ===============================================

  ######### checkout\n  svn co http://ethnio.textdriven.com/svn/ethnio/trunk .

  ######### branching\n  svn copy http://ethnio.textdriven.com/svn/ethnio/branches/filter-stable  http://ethnio.textdriven.com/svn/ethnio/tags/filters-stable-latest

  ########## tagging\n  svn copy http://ethnio.textdriven.com/svn/ethnio/trunk  http://ethnio.textdriven.com/svn/ethnio/tags/latest-stable

  ####### adding a new subversion user (gets fucked up a lot)\n  # 1. cd to the domain\xE2\x80\x99s etc/ directory\n  # 2. with any text editor, edit \xE2\x80\x98svn-access.conf\xE2\x80\x99 by adding a \xE2\x80\x98permission line\xE2\x80\x99 for \xE2\x80\x98newuser\xE2\x80\x99 to an existing repository (repositories are created in webmin\n  # 3. add a password for \xE2\x80\x98newuser\xE2\x80\x99 to the svn.basic.passwd file with\n  htpasswd svn.basic.passwd newuser 

  ####### editing an existing user\xE2\x80\x99s password\n  # 1. cd to the domain\xE2\x80\x99s etc/ directory\n  # 2. edit the user\xE2\x80\x99s password with\n  htpasswd svn.basic.passwd existinguser

  ########## editing an existing user\xE2\x80\x99s permissions  1. cd to the domain\xE2\x80\x99s etc/ directory\n  2. edit the existing user\xE2\x80\x99s permission line in the correct repository in \xE2\x80\x98svn-access.conf\xE2\x80\x99 (with any text editor)

  ######### removing a user\n  1. cd to the domain\xE2\x80\x99s etc/ directory\n  2. remove the user\xE2\x80\x99s permission line from the \xE2\x80\x98svn-access.conf\xE2\x80\x99 file (with any text editor)\n  3. remove the user\xE2\x80\x99s password line from the \xE2\x80\x98svn.basic.passwd\xE2\x80\x99 file (with any text editor)  =======================================\n =              trac                   =\n =======================================
n\
  # TODO: As of August 2008 something is wrong with trac permissions and CGB cant get in. CGB hasn't spent too much time on it and frequently takes the stupidly lazy route of just taking down the .htaccess file when he needs to get in. Emphasis on stupid.

  ########## totally useless fragmentary notes on this problem  #rewriteengine on\n  #rewriterule ethnio(.*) http://ethnio.textdriven.com:9046/ethnio$1 [p]  authtype basic\n  authname \"ethnio\" \n  authuserfile /users/home/ethnio/trac.htpasswd\n  require valid-user  [ethnio@alberni ~/etc]$ htdigest trac.digest.passwd ethnio.textdriven.com chris\n  adding user chris in realm ethnio.textdriven.com\n  new password: \n  re-type new password: \n  [ethnio@alberni ~/etc]$ pwd\n  /users/home/ethnio/etc  http://manuals.textdrive.com/read/chapter/54
n ===========================================\n =                  imagemagick            =\n ===========================================

  # TODO: we no longer use imagemagick for graphs, just for logo resizing, so that should be changed to minimagick or a smaller lib.

  ###### installing imagemagick (is a bear.) \n  #uninstall and reinstall everything as per\n  #http://www.elctech.com/2007/2/24/installing-rmagick-properly-in-osx  #might also need to uninstall and clean libiconv: \n    sudo port -f uninstall libiconv && sudo port clean --all libiconv && sudo port install libiconv  
n =======================================\n =               svn                   =\n =======================================

  ##### property seting\n  svn propset svn:ignore \"*\" public/assets\n  svn propset svn:ignore \"assets\" public\n  svn ci public

  #### compare two remote builds: \n  svn diff http://ethnio.textdriven.com/svn/ethnio/tags/filters-stable-caching-fix2 http://ethnio.textdriven.com/svn/ethnio/branches/filters-stable

  ##### create a tag \n  cd /working/dir\n  svn copy . http://ethnio.textdriven.com/svn/ethnio/tags/tagname

  ###### create a branch\n  cd /working/dir\n  svn copy . http://ethnio.textdriven.com/svn/ethnio/branches/branchname\n  # you can add -r right after copy to specify a revision.

  ==================================================
  =                selenium                        =
  ================================================== # to run selenium tests locally\n ruby test/selenium/selenium_suite.rb\n # if your server is not started rake selenium:start_servant # when you are getting 500 errors you just need to start the selenium server \n rake selenium:server  #look at /log/test.log and log/selenum.log and you very well might need to \n rake db:setup #to apply migrations to the test db.

  ==========================================================
  =                    piston                              =
  ==========================================================

  ###### create a local modifiable/updateable copy of a plugin. \n  # you want to do this instead of just using svn externals\n  # everything in ethnio should be pistonized \n  # http://piston.rubyforge.org/\n  \n  piston import svn:#address /vendor/plugins/pluginname

  ==========================================================
  =                  textdrive                             =
  ==========================================================  https:#webmin.alberni.textdrive.com/\n  ethnio\n  eT.....

  ====================================================
  = -------------------- rails  -------------------- =
  ====================================================

  ####### rails debugging  # using the logger in a controller\n  logger.debug(\" ------------ #{params[:screener]}\")\n  if params[:screener] \n  logger.debug(\" ------------ #{params[:screener][:active]}\")\t\n  end\n  logger.debug(\" ------------ #{@screener.active}\")
n\
  ####### rails logs\n  # the important ones are in \n  # \n  # /usr/local/apache2/logs (apache)\n  #  and in \n  # /u/apps/ethnio/shared/log (the rest of the rails stack)\n  # \n  # also, some shortcuts:\n   watchethnio # gives you tail -f on the production log\n   watchapache # gives you the apache production log\n   watcherrors # gives you the apache errors log.

  ====================================================
  = -------------------- mysql -------------------- =
  ====================================================

  # starting mysql on osx
  sudo /usr/local/mysql/bin/mysqld_safe

  #starting on ethnio.com
  /etc/init.d/mysql start

  #stopping
  /etc/init.d/mysql stop

  #loggin in 
  mysql -uroot -p
  1978.......w!

  ====================================================
  = -------------------- mongrel -------------------- =
  ====================================================

  # start
  mongrel_rails cluster::start -C /u/apps/ethnio/current/config/mongrel/production/mongrel_cluster.yml

  #no sudo? CGB 08/08

  # stop
  mongrel_rails cluster::stop -C /u/apps/ethnio/current/config/mongrel/production/mongrel_cluster.yml

  #the old way (above seems to work better, but it's mongrel so im keeping these handy)
  sudo /etc/init.d/mongrel_cluster stop 
  sudo /etc/init.d/mongrel_cluster start

  ====================================================
  = -------------------- apache -------------------- =
  ====================================================

  ###### tailing the production log\n   sudo tail -f /usr/local/apache2/logs/ethnio_production.log   # always use the   sudo /etc/init.d/apache2 stop && sudo /etc/init.d/apache2 start   # for apache2.2, which is what were running.\n   #do not use apache2ctl reload  (thats the wrong version)
n   # editing the apache cong\n   sudo vi /usr/local/apache2/conf/httpd.conf\n   
  ====================================================
  = -------------------- misc CLI -------------------- =
  ==================================================== 

  ######## making up some self-signed certs\n  openssl genrsa -out www.mycompany.com.key 2048\n  openssl req -new -x509 -key ethnio.textdriven.com.key -out ethnio.textdriven.com.cr

  ######### corey port forwarding insanity \n  # just deduce it:\n  ssh -l 9999:127.0.0.1:5900 -l 9998:127.0.0.1:548 -p123 ethnio@pedro.redirectme.net

  ####### copy robots.txt into every subdir\n  # (be careful with find it will fuck your box up fast!)\n  find -type d -exec cp /robots.txt {} \\; 

  ####### do remove a file everywhere. \n  find -name \"robots.txt\" -exec rm {} \\;

  ####### kill all procs containing 'selenium' (excepting grep):\n  ps aux | grep selenium | sed /grep/d | awk {'print $2'} | xargs kill
n\
  ######### public private keypairs
  # read the entire recipe before you start cookin, son  #create a key and dont use a password\n  ssh-keygen -t rsa\n  #now scp that mother to the machine\n  scp .ssh/id_rsa.pub ethnio@ethniodev.com:.ssh/authorized_keys2\n  #but in this case actually that last line will overwrite an existing key, instead just cat\xC2\xA0ssh/id_rsa.pub and paste the output into\xC2\xA0.ssh/authorized_keys2 on ethniodev.com thanks.\xC2\xA0  #now good gracious me add this to bash profile for the joy\n  alias ethnio='ssh ethnio@ethniodev.com' =======================================\n =              monitors               =\n =======================================

  CGB has written a few monitor and maint scripts that live in ~/monitors. Now you know.
n =========================================\n =                  cron                     =\n =========================================

  #the root crontab
  sudo crontab -e

  #system daily/weekly/monthly crons
  ls /etc/cron/*
n\
  =======================================
  =                 cap                    =
  =======================================

  ###### deploy head to demo\n  cap demo deploy -s head=true

  ###### handy-ass trick to run a command on the machine \n  cap demo invoke command=\"ls\" -s tag=whatever

  ######### deploying\n  cap production deploy -S head=true  #always deploy from a tag, look up the last (automatically created) tag in Cruise Control, like so:\n  cap production deploy -S tag='ethnio-********-ci'  #tags look like this: ethnio-20080105023744-ci and you can find them by clicking on browse source in trac

  ######### turning off traffic politely\n  # => puts the maintenance page in place, apache sends it all traffic\n  # note that head=true isnt used in this case, just needs to be there.  cap production deploy:web:disable -s head=true\n  cap production deploy:web:enable -s head=true
n\
  ####### restarting the application.
  # from your development machine
  cap production deploy:restart -s tag=*******"
