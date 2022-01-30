json.extract! customer, :id, :uid, :created_at, :updated_at
json.url customer_url(customer, format: :json)
