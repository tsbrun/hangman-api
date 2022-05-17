class Level < ApplicationRecord
    validates :hint, uniqueness: true 
    validates :word, uniqueness: true
end
