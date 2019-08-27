class GamesController < ApplicationController
  def index
      @games = Game.all
      render json: @games
  end


    def new
      @game = Game.new
    end

    def create
      @game = Game.create(id: params[:id], state: params[:state], created_at: params[:created_at], updated_at: params[:updated_at])
      render json: @game
    end

    def show
      @game = Game.find(params[:id])
      render json: @game
    end

    def edit
      @game = Game.find(params[:id])
    end

    def update
      @game = Game.find(params[:id])
      @game = Game.update(state: params[:state], updated_at: params[:updated_at])
      render json: @game
    end

    # private
    #
    # def game_params
    #   params.require(:game).permit(:id, :state, :created_at, :updated_at)
    # end

end
