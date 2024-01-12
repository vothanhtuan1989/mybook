class BookPlan < ApplicationRecord
  belongs_to :book
  belongs_to :plan
end
