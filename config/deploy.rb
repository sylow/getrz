# bundler bootstrap
require 'bundler/capistrano'

default_run_options[:pty] = true
set :application, "getrz.com"
set :repository,  "git@github.com:sylow/getrz.git"

set :user, 'gokhan'  # Your hosting account's username
set :domain, application  # Hosting servername where your account is located
set :deploy_to, "/home/#{user}/sites/#{application}"  # The location of your application on your hosting (my differ for each hosting provider)
ssh_options[:forward_agent] = true

set :scm, :git
set :scm_username, "alkmaar"
set :branch, "master"
set :keep_releases, 4
set :use_sudo, false
set :deploy_via, :remote_cache
set :git_enable_submodules, 1

role :web, "178.79.145.149"                          # Your HTTP server, Apache/etc
role :app, "178.79.145.149"                          # This may be the same as your `Web` server
role :db,  "178.79.145.149", :primary => true # This is where Rails migrations will run

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
  desc 'Create a symlink for shared config files.'
  task :symlink_config do
    %w[config/database.yml].each do |file|
      run "ln -sf #{shared_path}/#{file} #{latest_release}/#{file}"
    end
  end
  after 'deploy:update_code', 'deploy:symlink_config'
end
#require 'config/boot'
