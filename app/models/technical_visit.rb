# == Schema Information
#
# Table name: technical_visits
#
#  id                   :bigint           not null, primary key
#  uid                  :string
#  engine_id            :bigint
#  start_date           :datetime
#  end_date             :datetime
#  reference            :string
#  pre_tax_amount       :float
#  vat_rate             :float
#  amount_including_tax :float
#  status               :string
#  user_id              :bigint
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class TechnicalVisit < ApplicationRecord
	include SharedUtils::Generate
	
  	before_save :generate_random_number_uid


  	# Change default params ID to uid
  def to_param
    uid
  end
end
