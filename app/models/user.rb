class User < ApplicationRecord
    has_secure_password

    has_many :bets 
    has_many :games, through: :bets 

    validates :username, presence: true
    validates :email, presence: true
    validate :correct_email


    def correct_email
        if !email.match(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i)
            errors.add(:email, "The email entered does not exist, please try again.")
        end 
    end

end 
