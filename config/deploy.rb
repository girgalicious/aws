# config valid only for current version of Capistrano
lock "3.9.1"

set :application, "aws"
set :repo_url, "PLEASE_CHANGE"#"git@github.com:girgalicious/aws.git"

set :deploy_to, '/var/www/rails'
set :linked_dirs, %w(log tmp/pids tmp/cache tmp/sockets)
set :linked_dirs, %w(log tmp/pids tmp/cache tmp/sockets vendor/bundle)
set :keep_releases, 5
set :rvm_type, :user
set :rvm_ruby_version, '2.3.4'
set :pty, false

set :puma_role, :web
set :puma_rackup, -> { File.join(current_path, 'config.ru') }
set :puma_state, -> { "#{shared_path}/tmp/pids/puma.state" }
set :puma_pid, -> { "#{shared_path}/tmp/pids/puma.pid" }
set :puma_bind, 'tcp://0.0.0.0:3000'
set :puma_conf, -> { "#{shared_path}/config/puma.rb" }
set :puma_access_log, -> { "#{shared_path}/log/puma_error.log" }
set :puma_error_log, -> { "#{shared_path}/log/puma_access.log" }
set :puma_role, :app
set :puma_env, fetch(:rack_env, fetch(:rails_env, 'production'))
set :puma_worker_timeout, nil
set :puma_init_active_record, true
set :puma_preload_app, true
set :puma_workers, 2