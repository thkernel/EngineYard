json.extract! invoice, :id, :uid, :customer_id, :booking_id, :status, :user_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
