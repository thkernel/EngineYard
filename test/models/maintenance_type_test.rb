# == Schema Information
#
# Table name: maintenance_types
#
#  id          :bigint           not null, primary key
#  uid         :string
#  name        :string
#  status      :string
#  description :text
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class MaintenanceTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
