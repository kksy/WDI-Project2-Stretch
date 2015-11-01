require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'pg' # to connect to postgres

require_relative 'db_config'
require_relative 'models/stretch'
require_relative 'models/stretch_type'

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  erb :index
end

# get form for new stretch
get '/stretches' do

	erb :'/stretches/new'
end