class GamesController < ApplicationController
before_action (:not_logged_in)
   layout 'main'
    def index 
        @games = Game.abc
    end

    def show
        @game = Game.find_by(id: params[:id])
    end
end
