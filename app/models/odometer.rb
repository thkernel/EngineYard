# == Schema Information
#
# Table name: odometers
#
#  id          :bigint           not null, primary key
#  uid         :string
#  engine_id   :bigint
#  driver_id   :bigint
#  mileage     :float            default(0.0)
#  unit        :string
#  status      :string
#  description :text
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Odometer < ApplicationRecord

	include SharedUtils::Generate
	
  	before_save :generate_random_number_uid

  	# Change default params ID to uid
  def to_param
    uid
  end

  
end
