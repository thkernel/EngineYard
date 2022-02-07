# == Schema Information
#
# Table name: providers
#
#  id           :bigint           not null, primary key
#  uid          :string
#  company_name :string
#  firt_name    :string
#  last_name    :string
#  civility     :string
#  address      :string
#  country      :string
#  city         :string
#  phone        :string
#  email        :string
#  status       :string
#  description  :text
#  user_id      :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class ProviderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
