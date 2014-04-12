require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    haml :index
  end

  set :bind, '0.0.0.0'
end