class PermissionSerializer < ActiveModel::Serializer
  attributes :id, :uid, :status
  has_one :feature
  has_one :role
end
