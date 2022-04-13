class Player < ApplicationRecord
    has_many :notifications, dependent: :destroy

    validates :name, :nationality, :age, presence: true
    validates :number, :age, length: {in: 1..2}, numericality: {only_integer: true, greater_than: 0}
    # validates :number, uniqueness: true
end

