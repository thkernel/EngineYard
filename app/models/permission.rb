class Permission < ApplicationRecord
  belongs_to :feature
  belongs_to :role
end
