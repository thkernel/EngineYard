# == Schema Information
#
# Table name: rental_items
#
#  id         :bigint           not null, primary key
#  uid        :string
#  rental_id  :bigint
#  engine_id  :bigint
#  start_date :datetime
#  end_date   :datetime
#  amount     :float            default(0.0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RentalItem < ApplicationRecord

	include SharedUtils::Generate
	
  	before_save :generate_random_number_uid

  	# Change default params ID to uid
  def to_param
    uid
  end

  
end
