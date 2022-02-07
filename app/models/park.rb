# == Schema Information
#
# Table name: parks
#
#  id          :bigint           not null, primary key
#  uid         :string
#  name        :string
#  capacity    :integer
#  address     :string
#  country     :string
#  city        :string
#  manager     :string
#  status      :string
#  description :text
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Park < ApplicationRecord

	include SharedUtils::Generate
	
  	before_save :generate_random_number_uid
  	validates :name, presence: true, uniqueness: true

  	# Change default params ID to uid
  def to_param
    uid
  end

  
end
