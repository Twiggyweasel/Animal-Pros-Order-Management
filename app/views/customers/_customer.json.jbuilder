json.extract! customer, :id, :first_name, :last_name, :email, :address1, :address2, :city, :state, :zip, :day_number, :night_number, :referral_code, :created_at, :updated_at
json.url customer_url(customer, format: :json)
