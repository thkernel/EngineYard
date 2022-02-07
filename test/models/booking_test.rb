# == Schema Information
#
# Table name: bookings
#
#  id          :bigint           not null, primary key
#  uid         :string
#  customer_id :bigint
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
