# == Schema Information
#
# Table name: invoices
#
#  id             :bigint           not null, primary key
#  uid            :string
#  customer_id    :bigint
#  rental_id      :bigint
#  subtotal       :float            default(0.0)
#  tax            :float            default(0.0)
#  shipping       :float            default(0.0)
#  total          :float            default(0.0)
#  status         :string
#  paid           :string
#  payment_method :string
#  user_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Invoice < ApplicationRecord
	include SharedUtils::Generate
	
  	before_save :generate_random_number_uid


  belongs_to :customer
  belongs_to :rental
  belongs_to :user

  # Change default params ID to uid
  def to_param
    uid
  end

  
end
