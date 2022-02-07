# == Schema Information
#
# Table name: booking_items
#
#  id         :bigint           not null, primary key
#  uid        :string
#  booking_id :bigint
#  engine_id  :bigint
#  start_date :datetime
#  end_date   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BookingItemSerializer < ActiveModel::Serializer
  attributes :id, :uid, :start_date, :end_date
  has_one :booking
  has_one :engine
end
