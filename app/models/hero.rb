class Hero < ApplicationRecord
    has_one  :hero_power
    has_many :powers, through: :hero_power
    
    
end
