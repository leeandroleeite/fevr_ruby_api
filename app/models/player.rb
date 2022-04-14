class Player < ApplicationRecord
    has_many :notifications, dependent: :destroy
    validates :name, :nationality, presence: true
end

