json.extract! employee, :id, :first_name, :last_name, :region, :position, :phone, :hire_date, :is_active, :created_at, :updated_at
json.url employee_url(employee, format: :json)
