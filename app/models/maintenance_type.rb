# == Schema Information
#
# Table name: maintenance_types
#
#  id          :bigint           not null, primary key
#  uid         :string
#  name        :string
#  status      :string
#  description :text
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class MaintenanceType < ApplicationRecord

	include SharedUtils::Generate
	
  	before_save :generate_random_number_uid

  	validates :name, presence: true, uniqueness: true


  	# Change default params ID to uid
  def to_param
    uid
  end

  
end
