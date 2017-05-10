json.extract! contact, :id, :date, :reason, :details, :customer_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
