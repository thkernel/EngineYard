class BookingItemSerializer < ActiveModel::Serializer
  attributes :id, :uid, :start_date, :end_date
  has_one :booking
  has_one :engine
end
