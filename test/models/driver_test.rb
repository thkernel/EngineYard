# == Schema Information
#
# Table name: drivers
#
#  id          :bigint           not null, primary key
#  uid         :string
#  first_name  :string
#  last_name   :string
#  civility    :string
#  address     :string
#  phone       :string
#  city        :string
#  country     :string
#  email       :string
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class DriverTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
