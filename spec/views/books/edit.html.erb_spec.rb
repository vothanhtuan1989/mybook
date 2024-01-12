require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  let(:book) { build_stubbed(:book, cover: "MyString", name: "MyString", description: "MyText", author: "MyString", price: "9.99", number_of_page: 1, current_page: 1, active: false, priority: 1, user_id: 1, id: 1) }
    
  it "renders the edit book form" do
    assign(:book, book)
    
    # Render the view
    render

    # Expect the rendered view to have the correct form
    expect(rendered).to have_selector("form[action='#{book_path(book)}'][method='post']")

    # Expect the form to have the input fields for the book attributes
    expect(rendered).to have_field("book[cover]", with: "MyString")
    expect(rendered).to have_field("book[name]", with: "MyString")
    expect(rendered).to have_field("book[description]", with: /MyText/)
    expect(rendered).to have_field("book[author]", with: "MyString")
    expect(rendered).to have_field("book[price]", with: "9.99")
    expect(rendered).to have_field("book[number_of_page]", with: "1")
    expect(rendered).to have_field("book[current_page]", with: "1")
    expect(rendered).to have_field("book[active]", checked: false)
    expect(rendered).to have_field("book[priority]", with: "1")
    expect(rendered).to have_field("book[user_id]", with: "1")
  end
end
