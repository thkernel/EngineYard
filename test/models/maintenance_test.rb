# == Schema Information
#
# Table name: maintenances
#
#  id                   :bigint           not null, primary key
#  uid                  :string
#  engine_category_id   :bigint
#  maintenance_type_id  :bigint
#  pre_tax_amount       :float            default(0.0)
#  vat_rate             :float            default(0.0)
#  vat_amount           :float            default(0.0)
#  amount_including_tax :float            default(0.0)
#  service_provider     :string
#  status               :string
#  description          :text
#  user_id              :bigint
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class MaintenanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
