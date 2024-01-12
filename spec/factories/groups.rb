FactoryBot.define do
  factory :group do
    name { "MyString" }
    user_groups_count { 1 }
    book_groups_count { 1 }
    start_date { "2024-01-13 01:41:43" }
    description { "MyText" }
    group_type { 1 }
    avatar { "MyString" }
    status { 1 }
    member_number_limitation { 1 }
    book_number_required { 1 }
    join_fee { "9.99" }
  end
end
