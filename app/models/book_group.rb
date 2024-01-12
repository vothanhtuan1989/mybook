class BookGroup < ApplicationRecord
  belongs_to :group, counter_cache: true
  belongs_to :book
end
