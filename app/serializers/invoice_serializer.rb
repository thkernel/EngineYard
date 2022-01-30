class InvoiceSerializer < ActiveModel::Serializer
  attributes :id, :uid, :status
  has_one :customer
  has_one :booking
  has_one :user
end
