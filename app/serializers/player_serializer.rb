class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :number, :nationality, :age, :position

  # Gets all information from players along with the notifications for each player
  has_many :notifications
end
