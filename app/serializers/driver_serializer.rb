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

class DriverSerializer < ActiveModel::Serializer
  attributes :id, :uid
end
