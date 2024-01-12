RSpec.describe "books/index", type: :view do
  let(:books) { create_list(:book, 2, cover: "Cover", name: "Name", description: "MyText", author: "Author", price: "9.99", number_of_page: 2, current_page: 3, active: false, priority: 4, user_id: 5) }

  it "renders a list of books" do
    assign(:books, books)

    expect(books.size).to be 2
  end
end
