# == Schema Information
#
# Table name: insurers
#
#  id         :bigint           not null, primary key
#  uid        :string
#  name       :string
#  address    :string
#  phone      :string
#  email      :string
#  country    :string
#  city       :string
#  status     :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Insurer < ApplicationRecord
	include SharedUtils::Generate
	
  	before_save :generate_random_number_uid


  	# Change default params ID to uid
  def to_param
    uid
  end

  
end
