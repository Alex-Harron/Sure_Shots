class BetsController < ApplicationController
    before_action (:not_logged_in)
    layout 'main'

    def index
        if params[:game_id] && current_game
            @bets = @game.bets
        else
            render :index
        end
    end

    def new
        if params[:game_id]
            current_game
            @bet = @game.bets.build
        else
            @bet = Bet.new
            @bet.build_game
        end
    end

    def create
        if params[:game_id]
            current_game
            @bet = @game.bets.build(bet_params)
            @bet.user_id = session[:user_id]
        else
            @bet = Bet.new(bet_params)
        end

        if @bet.save
            redirect_to game_bets_path
        else 
            render :new
        end
    end

    private

    def bet_params
        params.require(:bet).permit(:amount, :date, :game_id, :winner)
    end

    def current_game 
        @game = Game.find_by(id: params[:game_id])
    end
end
