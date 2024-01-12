class Book < ApplicationRecord
  has_many :book_plans, dependent: :destroy
  has_many :reading_missions, dependent: :destroy
  has_one :profile, foreign_key: 'current_book_id'
  has_many :book_groups, dependent: :destroy

  has_rich_text :description
  has_one_attached :cover
end
