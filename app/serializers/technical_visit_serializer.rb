# == Schema Information
#
# Table name: technical_visits
#
#  id                   :bigint           not null, primary key
#  uid                  :string
#  engine_id            :bigint
#  start_date           :datetime
#  end_date             :datetime
#  reference            :string
#  pre_tax_amount       :float
#  vat_rate             :float
#  amount_including_tax :float
#  status               :string
#  user_id              :bigint
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class TechnicalVisitSerializer < ActiveModel::Serializer
  attributes :id, :uid
end
