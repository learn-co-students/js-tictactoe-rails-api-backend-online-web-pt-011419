class GamesController < ApplicationController
  
  def index
    games = Game.all
    render json: games
  end

  def show
    render json: @game
  end

  

end
