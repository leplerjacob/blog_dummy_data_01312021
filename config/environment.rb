# Basic database setup

require 'bundler/setup'
require 'sinatra/activerecord'
Bundler.require(:default, "development")

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/development.db"
)

require_all 'app'