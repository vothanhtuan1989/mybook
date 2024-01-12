json.extract! plan, :id, :name, :start_date, :end_date, :priority, :status, :description, :completed_at, :active, :created_at, :updated_at
json.url plan_url(plan, format: :json)
