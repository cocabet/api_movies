class Movie < ApplicationRecord
    validates :name, presence: true
    validates :duration, presence: true
    
end
