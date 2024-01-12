class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :current_book, class_name: 'Book'
end
