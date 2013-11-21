require 'rubygems'
require 'bundler/setup'
require 'sinatra'

set :bind, '0.0.0.0'
set :logging, true

get '/' do
  "hello world"
end

get '/foo' do
  'foo'
end
