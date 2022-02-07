# == Schema Information
#
# Table name: invoice_items
#
#  id         :bigint           not null, primary key
#  uid        :string
#  invoice_id :bigint
#  engine_id  :bigint
#  start_date :datetime
#  end_date   :datetime
#  amount     :float            default(0.0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InvoiceItemSerializer < ActiveModel::Serializer
  attributes :id, :uid, :start_date, :end_date, :amount
  has_one :invoice
  has_one :engine
end
