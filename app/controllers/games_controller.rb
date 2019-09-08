class GamesController < ApplicationController
  
  def index
    games = Game.all
    render json: games
  end

  def show
    render json: @game
  end

  def create
    game = Game.create(game_params)
    # below: game? 
    render json: game, status: 201
  end

  def update
    @game.update(game_params)
    render json: @game
  end
  

end
