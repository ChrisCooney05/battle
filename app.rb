require "sinatra/base"
require './lib/player.rb'
require './lib/game.rb'

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
  @player1 = $player1
  @player2 = $player2
  erb :play
end

get '/attack' do
  @game = Game.new
  @player1 = $player1
  @player2 = $player2
  @game.attack(@player2)
  erb :attack
end

  run! if app_file == $0
end
