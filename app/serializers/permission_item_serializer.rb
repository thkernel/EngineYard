class PermissionItemSerializer < ActiveModel::Serializer
  attributes :id, :uid, :action_name, :status
  has_one :permission
end
