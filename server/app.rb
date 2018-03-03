require 'rubygems'
require 'sinatra'
require 'slim'
require 'active_record'
require 'sprockets'
require 'json'
require './server/router'

# set :bind, 'localhost'

environment = Sprockets::Environment.new

set :environment, environment

environment.append_path "assets/static"

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'rails_dev',
  :username => 'postgres'
)
