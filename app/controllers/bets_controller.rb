class BetsController < ApplicationController
    before_action :set_bet, except: [:index, :new, :create]

    def index
        if params[:game_id] && @game = Game.find_by(id: params[:game_id])
            @bets = @game.bets 
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

    def create
        if params[:game_id]
            @game = Game.find_by(id: params[:game_id])
            @bet = @game.bets.build(bet_params)
        else
            @bet = Bet.new(bet_params)
        end

        if @bet.save
            redirect_to game_bets_path(@bet.game)
        else 
            render :new
        end
    end

    def show
        @bet = Bet.find_by(id: params[:id])
    end

    def edit
    end

    def update
        if @bet.update(bet_params)
            redirect_to bet_path(@bet)
        else
            render :edit
        end
    end

    def destroy
        @bet.destroy
        redirect_to game_bets_path
    end

    private

    def bet_params
        params.require(:bet).permit(:amount, :date, :game_id)
    end

    def set_bet
        @bet = Bet.find_by_id(params[:id])
    end

end
