class Game < ApplicationRecord
    has_many :bets 
    has_many :users, through: :bets

    def self.games_bets 
        joins(:bets).group('games.name')
    end

    scope :abc, -> {order('name')}
end
