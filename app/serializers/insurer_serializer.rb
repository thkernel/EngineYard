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

class InsurerSerializer < ActiveModel::Serializer
  attributes :id, :uid
end
