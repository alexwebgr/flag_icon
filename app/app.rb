require 'sinatra'
module FlagIcon
end

require_relative '../lib/flag_icon/countries'
require_relative "../lib/flag_icon/helpers"

get '/' do
  erb :index
end