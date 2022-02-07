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

class RentalItemSerializer < ActiveModel::Serializer
  attributes :id, :uid
end
