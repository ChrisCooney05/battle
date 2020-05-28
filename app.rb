require "sinatra/base"

class Battle < Sinatra::Base
  enable :sessions

get '/' do
  erb :index
end

post '/names' do
  session[:player1] = params[:player1]
  session[:player2]= params[:player2]
  redirect '/play'
end

get '/play' do
  @player1 = session[:player1]
  @player2 = session[:player2]
  erb :play
end
  run! if app_file == $0
end


# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them
