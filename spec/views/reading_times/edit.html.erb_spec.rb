require 'rails_helper'

RSpec.describe "reading_times/edit", type: :view do
  let(:reading_time) {
    ReadingTime.create!(
      from_page: 1,
      to_page: 1,
      book_id: 1,
      note: "MyText"
    )
  }

  before(:each) do
    assign(:reading_time, reading_time)
  end

  it "renders the edit reading_time form" do
    render

    assert_select "form[action=?][method=?]", reading_time_path(reading_time), "post" do

      assert_select "input[name=?]", "reading_time[from_page]"

      assert_select "input[name=?]", "reading_time[to_page]"

      assert_select "input[name=?]", "reading_time[book_id]"

      assert_select "textarea[name=?]", "reading_time[note]"
    end
  end
end
