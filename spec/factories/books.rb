FactoryBot.define do
  factory :book do
    cover { "MyString" }
    name { "MyString" }
    description { "MyText" }
    author { "MyString" }
    price { "9.99" }
    buy_at { "2024-01-13 01:38:50" }
    number_of_page { 1 }
    current_page { 1 }
    active { false }
    priority { 1 }
    user_id { 1 }
  end
end
