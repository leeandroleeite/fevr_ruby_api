class Player < ApplicationRecord

    has_many :notifications
    validates :name, presence: true
    
end
