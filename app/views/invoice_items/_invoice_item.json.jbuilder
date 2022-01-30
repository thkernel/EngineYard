json.extract! invoice_item, :id, :uid, :invoice_id, :engine_id, :start_date, :end_date, :amount, :created_at, :updated_at
json.url invoice_item_url(invoice_item, format: :json)
