class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :number, :nationality, :age, :position
end
