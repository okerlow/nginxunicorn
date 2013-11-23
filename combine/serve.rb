require 'rubygems'
require 'bundler/setup'
require 'sinatra'

set :bind, '0.0.0.0'
set :logging, true

get '/' do
  "hello world"
end

get '/:tag' do |tag|
  redirect url("/#{tag}/")
end

get '/:tag/' do |tag|
  puts "#{tag}"
end
