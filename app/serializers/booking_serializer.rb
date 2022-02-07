# == Schema Information
#
# Table name: bookings
#
#  id          :bigint           not null, primary key
#  uid         :string
#  customer_id :bigint
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class BookingSerializer < ActiveModel::Serializer
  attributes :id, :uid, :status
  has_one :customer
  has_one :user
end
