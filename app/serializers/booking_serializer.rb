class BookingSerializer < ActiveModel::Serializer
  attributes :user_id, :id, :name, :email, :phone, :datetime, :message
end
