class Game < ApplicationRecord
    has_many :bets 
    has_many :users, through: :bets
    

    scope :abc, -> {order('name')}
end
