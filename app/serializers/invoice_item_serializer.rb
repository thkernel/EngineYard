class InvoiceItemSerializer < ActiveModel::Serializer
  attributes :id, :uid, :start_date, :end_date, :amount
  has_one :invoice
  has_one :engine
end
