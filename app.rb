require "sinatra/base"
require './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

get '/' do
  erb :index
end

post '/names' do
  $player1 = Player.new(params[:player1])
  $player2 = Player.new(params[:player2])
  redirect '/play'
end

get '/play' do
  @player1 = $player1.get_name
  @player2 = $player2.get_name
  erb :play
end

get '/attack' do
  erb :attack
end

  run! if app_file == $0
end
