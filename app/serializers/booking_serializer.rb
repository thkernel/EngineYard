class BookingSerializer < ActiveModel::Serializer
  attributes :id, :uid, :status
  has_one :customer
  has_one :user
end
