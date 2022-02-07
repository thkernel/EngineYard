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

class OdometerSerializer < ActiveModel::Serializer
  attributes :id, :uid
end
