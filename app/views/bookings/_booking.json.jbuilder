json.extract! booking, :id, :uid, :customer_id, :status, :user_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
