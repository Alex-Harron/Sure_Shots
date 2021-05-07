class Bet < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :game, optional: true
    has_many :teams, through: :games

    validates :amount, presence: true
end
