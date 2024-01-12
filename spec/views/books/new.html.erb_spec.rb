require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      cover: "MyString",
      name: "MyString",
      description: "MyText",
      author: "MyString",
      price: "9.99",
      number_of_page: 1,
      current_page: 1,
      active: false,
      priority: 1,
      user_id: 1
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input[name=?]", "book[cover]"

      assert_select "input[name=?]", "book[name]"

      assert_select "textarea[name=?]", "book[description]"

      assert_select "input[name=?]", "book[author]"

      assert_select "input[name=?]", "book[price]"

      assert_select "input[name=?]", "book[number_of_page]"

      assert_select "input[name=?]", "book[current_page]"

      assert_select "input[name=?]", "book[active]"

      assert_select "input[name=?]", "book[priority]"

      assert_select "input[name=?]", "book[user_id]"
    end
  end
end
