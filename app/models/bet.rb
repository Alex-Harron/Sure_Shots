class Bet < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :game, optional: true

    validates :amount, presence: true
end


