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

class BookingItem < ApplicationRecord
	include SharedUtils::Generate
	
  	before_save :generate_random_number_uid

  belongs_to :booking
  belongs_to :engine

  # Change default params ID to uid
  def to_param
    uid
  end
  
end
