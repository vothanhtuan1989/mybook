require 'rails_helper'

RSpec.describe "reading_times/show", type: :view do
  before(:each) do
    assign(:reading_time, ReadingTime.create!(
      from_page: 2,
      to_page: 3,
      book_id: 4,
      note: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/MyText/)
  end
end
