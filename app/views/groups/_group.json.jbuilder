json.extract! group, :id, :name, :user_groups_count, :book_groups_count, :start_date, :description, :group_type, :avatar, :status, :member_number_limitation, :book_number_required, :join_fee, :created_at, :updated_at
json.url group_url(group, format: :json)
