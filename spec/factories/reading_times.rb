FactoryBot.define do
  factory :reading_time do
    start_time { "2024-01-13 01:43:33" }
    end_time { "2024-01-13 01:43:33" }
    from_page { 1 }
    to_page { 1 }
    book_id { 1 }
    note { "MyText" }
  end
end
