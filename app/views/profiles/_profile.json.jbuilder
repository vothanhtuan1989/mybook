json.extract! profile, :id, :number_of_reading, :number_page_per_reading, :current_book_id, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
