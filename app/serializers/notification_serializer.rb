# == Schema Information
#
# Table name: notifications
#
#  id         :bigint           not null, primary key
#  uid        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :uid
end
