RSpec.describe "reading_times/index", type: :view do
  before(:each) do
    assign(:reading_times, [
      ReadingTime.create!(
        from_page: 2,
        to_page: 3,
        book_id: 4,
        note: "MyText"
      ),
      ReadingTime.create!(
        from_page: 2,
        to_page: 3,
        book_id: 4,
        note: "MyText"
      )
    ])
  end

  it "renders a list of reading_times" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
