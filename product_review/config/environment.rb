ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

require_relative "../app/models/user"
require_relative "../app/models/review"
require_relative "../app/models/product"
