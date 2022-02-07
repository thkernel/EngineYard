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

class MaintenanceTypeSerializer < ActiveModel::Serializer
  attributes :id, :uid
end
