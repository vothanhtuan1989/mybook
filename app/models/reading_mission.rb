class ReadingMission < ApplicationRecord
  belongs_to :book

  enum status: [:pending, :completed]
end
