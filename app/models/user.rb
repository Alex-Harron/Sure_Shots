class User < ApplicationRecord
    has_secure_password
    
    has_many :bets 
    has_many :games, through: :bets 

    validates :username, presence: true, uniqueness: true

    validates :password, length: { in: 5..12 }
    
    validates :email, presence: true, uniqueness: true

end 
