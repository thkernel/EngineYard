class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :subject_class, :description, :status
end
