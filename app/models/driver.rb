# == Schema Information
#
# Table name: drivers
#
#  id          :bigint           not null, primary key
#  uid         :string
#  first_name  :string
#  last_name   :string
#  civility    :string
#  address     :string
#  phone       :string
#  city        :string
#  country     :string
#  email       :string
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Driver < ApplicationRecord
	include SharedUtils::Generate
	
  	before_save :generate_random_number_uid


  	# Change default params ID to uid
  def to_param
    uid
  end

  
end
