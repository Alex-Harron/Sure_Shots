class Bet < ApplicationRecord
    belongs_to :user
    belongs_to :game 

    validates :amount, presence: :true
end
