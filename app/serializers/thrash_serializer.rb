class ThrashSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :datetime, :content
end
