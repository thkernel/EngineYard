# == Schema Information
#
# Table name: insurances
#
#  id                   :bigint           not null, primary key
#  uid                  :string
#  insurer_id           :bigint
#  engine_id            :bigint
#  start_date           :datetime
#  end_date             :datetime
#  insurance_number     :string
#  pre_tax_amount       :float            default(0.0)
#  vat_rate             :float            default(0.0)
#  vat_amount           :float            default(0.0)
#  amount_including_tax :float            default(0.0)
#  status               :string
#  user_id              :bigint
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Insurance < ApplicationRecord
	include SharedUtils::Generate
	
  	before_save :generate_random_number_uid


  	# Change default params ID to uid
  def to_param
    uid
  end

  
end
