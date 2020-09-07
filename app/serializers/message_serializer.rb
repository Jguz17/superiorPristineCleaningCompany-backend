class MessageSerializer < ActiveModel::Serializer
  attributes :user_id, :id, :name, :email, :phone, :content, :datetime
end
