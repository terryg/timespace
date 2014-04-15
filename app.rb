require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    @initial = Date.new(1726, 5, 15)
    @next = Date.new(1899, 10, 01)
    @now = Date.today()
    @final = @next + (@next - @initial)
    @days_remaining = (@final - @now).to_i 
    haml :index
  end

end