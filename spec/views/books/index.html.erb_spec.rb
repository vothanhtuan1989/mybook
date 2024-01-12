require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        cover: "Cover",
        name: "Name",
        description: "MyText",
        author: "Author",
        price: "9.99",
        number_of_page: 2,
        current_page: 3,
        active: false,
        priority: 4,
        user_id: 5
      ),
      Book.create!(
        cover: "Cover",
        name: "Name",
        description: "MyText",
        author: "Author",
        price: "9.99",
        number_of_page: 2,
        current_page: 3,
        active: false,
        priority: 4,
        user_id: 5
      )
    ])
  end

  it "renders a list of books" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Cover".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Author".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
  end
end
