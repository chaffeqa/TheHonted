set :application, "TheHonted"
set :repository,  "git@github.com:chaffeqa/TheHonted.git"

default_run_options[:pty] = true
set :scm, "git"
set :user, "puppetmaster" # The Server's user for deploys
set :scm_passphrase, "VoodooPuppet" #Deploy user's password
set :branch, "master"
set :deploy_via, :remote_cache
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :deploy_to, "/var/www"
role :web, "thehonted.com"                          # Your HTTP server, Apache/etc
role :app, "thehonted.com"                          # This may be the same as your `Web` server
role :db,  "thehonted.com", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end