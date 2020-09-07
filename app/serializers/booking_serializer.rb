class BookingSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :datetime, :message
end
