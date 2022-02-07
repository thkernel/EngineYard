# == Schema Information
#
# Table name: engines
#
#  id                     :bigint           not null, primary key
#  uid                    :string
#  engine_categorie_id    :bigint
#  brand                  :string
#  engine_model           :string
#  manufacture_year       :string
#  name                   :string
#  chassis_number         :string
#  immatriculation_number :string
#  color                  :string
#  manufacture_date       :datetime
#  circulation_date       :datetime
#  mileage                :string
#  fuel_type              :string
#  status                 :string
#  description            :text
#  park_id                :bigint
#  user_id                :bigint
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class EngineSerializer < ActiveModel::Serializer
  attributes :id, :uid
end
