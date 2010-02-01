libdir = File.dirname(__FILE__)
$:.unshift(libdir)
PROJECT_ROOT = File.join(libdir, '..')

require 'ftools'
require 'pathname'
require 'logger'
require 'virtualbox'
require 'net/ssh'
require 'hobo/config'
require 'hobo/env'
require 'hobo/ssh'
require 'hobo/vm'

# TODO: Make this configurable
log_output = ENV['HOBO_ENV'] == 'test' ? nil : STDOUT
HOBO_LOGGER = Logger.new(log_output)
Hobo::Env.load! unless ENV['HOBO_ENV'] == 'test'
