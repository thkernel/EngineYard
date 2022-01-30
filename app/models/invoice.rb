class Invoice < ApplicationRecord
  belongs_to :customer
  belongs_to :rental
  belongs_to :user
end
