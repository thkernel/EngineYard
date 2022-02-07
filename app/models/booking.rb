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

class Booking < ApplicationRecord
	include SharedUtils::Generate
	
  	before_save :generate_random_number_uid

  belongs_to :customer
  belongs_to :user

  # Change default params ID to uid
  def to_param
    uid
  end
  
end
