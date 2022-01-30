class InvoiceItem < ApplicationRecord
  belongs_to :invoice
  belongs_to :engine
end
