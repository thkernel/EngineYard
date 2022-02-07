# == Schema Information
#
# Table name: invoices
#
#  id             :bigint           not null, primary key
#  uid            :string
#  customer_id    :bigint
#  rental_id      :bigint
#  subtotal       :float            default(0.0)
#  tax            :float            default(0.0)
#  shipping       :float            default(0.0)
#  total          :float            default(0.0)
#  status         :string
#  paid           :string
#  payment_method :string
#  user_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class InvoiceSerializer < ActiveModel::Serializer
  attributes :id, :uid, :status
  has_one :customer
  has_one :booking
  has_one :user
end
