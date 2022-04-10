class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :message

  #belongs_to :player
end
