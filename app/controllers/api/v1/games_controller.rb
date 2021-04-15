class Api::V1::GamesController < ApplicationController
    skip_before_action :authorized

    def index
        @games = Game.all
        render json: @games
    end

    def show
        @game = Game.find(params[:id])
        render json: @game
    end

    def create
        @game = Game.new(game_params)
        unless @game.save
            render json: { status: 500 }
        else
            render json: {
                status: :added,
                game: @game
            }
        end
    end

    def update
        @game = Game.find(params[:id])
        if @game.update(game_params)
            render json: {
                status: :updated,
                game: @game
            }
        else
            render json: { status: 500 }
        end 
    end

    def destroy
        
        @game = Game.find(params[:id])
        @game.destroy
        render json: {}
    end

private

  def game_params
    params.require(:game).permit( :dificulty, :category, :points, :user_id)
  end

end