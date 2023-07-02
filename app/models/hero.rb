class Hero < ApplicationRecord
    has_one  :hero_power
    has_many :powers, through: :hero_power
    validates :description, presence: true, length: { minimum: 20 }
    
end
