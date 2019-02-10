# Load DSL and set up stages
require "capistrano/setup"


# Includes default deployment tasks
require 'capistrano/deploy'
require "capistrano/rails"
require 'capistrano/rvm'

require 'capistrano/puma'
require 'capistrano/puma/workers'
install_plugin Capistrano::Puma  # Default puma tasks

require 'capistrano/scm/git'
install_plugin Capistrano::SCM::Git

require 'capistrano/rails/console'
Dir.glob("lib/capistrano/tasks/*.cap").each { |r| import r }