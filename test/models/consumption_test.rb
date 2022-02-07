# == Schema Information
#
# Table name: consumptions
#
#  id          :bigint           not null, primary key
#  uid         :string
#  engine_id   :bigint
#  driver_id   :bigint
#  quantity    :float            default(0.0)
#  unit        :string
#  fuel_type   :string
#  status      :string
#  description :text
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ConsumptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
