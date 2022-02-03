require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  enable :sessions
  configure:development do
    register Sinatra::Reloader
  end

  # get '/' do
  #   "Testing infrastructure working!"
  # end

  get '/' do
    # @player1 = params[:player1] ||= "Player 1"
    # @player2 = params[:player2] ||= "Player 2"
    erb :index
  end  
  
  post '/names' do
    session[:player1] = params[:player1] ||= "Player 1"
    session[:player2] = params[:player2] ||= "Player 2"
    erb :play
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    p @player1

    erb :play
  end



end