require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'lib/caesar_cipher.rb'

get '/' do

  if params["text"] != nil && params["shift"] != nil
    encrypted = caesar_cipher(params["text"].to_s, params["shift"].to_i)
  end



  erb :index, :locals => {:encrypted => encrypted }

end
