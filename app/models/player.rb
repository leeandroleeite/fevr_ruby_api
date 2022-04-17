class Player < ApplicationRecord
    has_many :notifications, dependent: :destroy
    validates :name, presence: true
end

