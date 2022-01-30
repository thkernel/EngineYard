class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :uid, :first_name, :last_name, :civility, :address, :phone
  has_one :user
end
