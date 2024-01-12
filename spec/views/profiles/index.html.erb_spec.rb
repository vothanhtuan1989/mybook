require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        number_of_reading: 2,
        number_page_per_reading: 3,
        current_book_id: 4,
        user_id: 5
      ),
      Profile.create!(
        number_of_reading: 2,
        number_page_per_reading: 3,
        current_book_id: 4,
        user_id: 5
      )
    ])
  end

  it "renders a list of profiles" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
  end
end
