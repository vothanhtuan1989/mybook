class UserGroup < ApplicationRecord
  enum status: [:pending, :approved]
  enum role: [:creator, :admin, :member]

  belongs_to :user
  belongs_to :group
end
