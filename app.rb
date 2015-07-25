require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

# Load specific routes
require_relative 'db/connection'
require_relative 'controllers/members'
require_relative 'controllers/photos'
# require_relative 'controllers/comments'

#require models
require_relative 'models/member'
require_relative 'models/photo'
require_relative 'models/comment'

#load general routes
# get "/" do
#   erb :welcome
# end

# binding.pry
#
# puts "not an error"
