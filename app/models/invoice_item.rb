# == Schema Information
#
# Table name: invoice_items
#
#  id         :bigint           not null, primary key
#  uid        :string
#  invoice_id :bigint
#  engine_id  :bigint
#  start_date :datetime
#  end_date   :datetime
#  amount     :float            default(0.0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InvoiceItem < ApplicationRecord

	include SharedUtils::Generate
	
  	before_save :generate_random_number_uid


  belongs_to :invoice
  belongs_to :engine


  # Change default params ID to uid
  def to_param
    uid
  end

  
end
