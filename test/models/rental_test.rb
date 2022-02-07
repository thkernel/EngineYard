# == Schema Information
#
# Table name: rentals
#
#  id             :bigint           not null, primary key
#  uid            :string
#  customer_id    :bigint
#  booking_id     :bigint
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

require 'test_helper'

class RentalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
