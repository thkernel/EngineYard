# == Schema Information
#
# Table name: booking_items
#
#  id         :bigint           not null, primary key
#  uid        :string
#  booking_id :bigint
#  engine_id  :bigint
#  start_date :datetime
#  end_date   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BookingItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
