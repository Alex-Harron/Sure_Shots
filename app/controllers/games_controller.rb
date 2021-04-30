class GamesController < ApplicationController
    layout "application" 
    def index 
        @games = Game.all
        @bets = Bet.all
    end

    def show
        @game = Game.find_by(id: params[:id])
    end
end
