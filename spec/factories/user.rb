FactoryBot.define do
  factory :user do
    email { "admin@book.slotgroup.com" }
    password { "qWZ*6uAg25H8!4" }
    root_user { false }
  end
end