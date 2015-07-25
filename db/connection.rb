require 'pg'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "photos_of_paul_db"
)
