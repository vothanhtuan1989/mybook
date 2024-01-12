FactoryBot.define do
  factory :reading_mission do
    name { "MyString" }
    status { 1 }
    exact_page { 1 }
    date { "2024-01-13" }
    from_page { 1 }
    to_page { 1 }
    book_id { 1 }
    priority { 1 }
    active { false }
  end
end
