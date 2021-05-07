class Game < ApplicationRecord
    has_many :bets 
    has_many :users, through: :bets
    has_many :teams

    scope :abc, -> {order('name')}
end
