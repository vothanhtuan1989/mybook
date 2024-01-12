require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    assign(:book, Book.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cover/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
