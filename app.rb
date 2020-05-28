require "sinatra/base"

class Battle < Sinatra::Base

get '/' do
  erb :index
end

post '/names' do
  @player1 = params[:player1]
  @player2 = params[:player2]
  erb :battle
end

  run! if app_file == $0
end

# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them
