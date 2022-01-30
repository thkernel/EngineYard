json.extract! booking_item, :id, :uid, :booking_id, :engine_id, :start_date, :end_date, :created_at, :updated_at
json.url booking_item_url(booking_item, format: :json)
