= capistrano: "http://www.dizzy.co.uk/cheatsheets

== Installation:
  $ gem install capistrano
  $ capify .

== Tasks:
  $ cap -T              All Tasks;

== Configure:
=== Capfile
load 'deploy' if respond_to?(:namespace) # cap2 differentiator
Dir['vendor/plugins/*/recipes/*.rb'].each { |plugin| load(plugin) }
load 'config/deploy'

namespace :deploy do
  desc "Symlink configs and folders."
  task :symlink_extras do
    run "if [ -e ~/public_html ]; then rm ~/public_html; fi && ln -nfs #{release_path}/public ~/public_html"
    run "ln -nfs #{shared_path}/config/*.yml #{release_path}/config/"
    run "cp #{shared_path}/config/.htaccess ~/public_html/"
    run "cp #{shared_path}/config/ie.html ~/public_html/"
    run "ln -nfs #{shared_path}/files #{release_path}/public/"
    run "chmod 755 -R #{release_path}/public"
  end
end

after "deploy", "deploy:cleanup" # keeps only last 5 releases
after "deploy:update_code", "deploy:symlink_extras"

=== config/deploy.rb
  set :application, "zhangjinzhu.com"

  set :user, "usename"
  set :deploy_to, "~/WEB/#{application}"
  set :use_sudo, false

  set :scm, "git"
  set :repository,  "http://github.com/wosmvp/progblog.git"
  set :branch, "master"

  role :app, application
  role :web, application
  role :db,  application, :primary => true
