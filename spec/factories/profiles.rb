FactoryBot.define do
  factory :profile do
    number_of_reading { 1 }
    number_page_per_reading { 1 }
    current_book_id { 1 }
    user_id { 1 }
  end
end
