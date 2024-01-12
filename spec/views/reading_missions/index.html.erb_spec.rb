require 'rails_helper'

RSpec.describe "reading_missions/index", type: :view do
  before(:each) do
    assign(:reading_missions, [
      ReadingMission.create!(
        name: "Name",
        status: 2,
        exact_page: 3,
        from_page: 4,
        to_page: 5,
        book_id: 6,
        priority: 7,
        active: false
      ),
      ReadingMission.create!(
        name: "Name",
        status: 2,
        exact_page: 3,
        from_page: 4,
        to_page: 5,
        book_id: 6,
        priority: 7,
        active: false
      )
    ])
  end

  it "renders a list of reading_missions" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
