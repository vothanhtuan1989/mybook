json.extract! book, :id, :cover, :name, :description, :author, :price, :buy_at, :number_of_page, :current_page, :active, :priority, :user_id, :created_at, :updated_at
json.url book_url(book, format: :json)
