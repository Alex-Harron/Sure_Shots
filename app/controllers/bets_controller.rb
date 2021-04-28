class BetsController < ApplicationController
    before_action :set_bet, except: [:index, :new, :create]

    def index
        if params[:game_id] && @game = Game.find_by(id: parasm[:game_id])
            @bet = @game.bets 
        else
            @bets = Bet.all
        end
    end

    def new 
        if params[:game_id]
            @game = Game.find_by(id: params[:game_id])
            @bet = @game.bets.build
        else
            @bet = Bet.new
            @bet.build_game
        end
    end
end
