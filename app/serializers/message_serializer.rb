class MessageSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :content
end
