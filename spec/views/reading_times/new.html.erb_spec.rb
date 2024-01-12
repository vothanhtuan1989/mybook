require 'rails_helper'

RSpec.describe "reading_times/new", type: :view do
  before(:each) do
    assign(:reading_time, ReadingTime.new(
      from_page: 1,
      to_page: 1,
      book_id: 1,
      note: "MyText"
    ))
  end

  it "renders new reading_time form" do
    render

    assert_select "form[action=?][method=?]", reading_times_path, "post" do

      assert_select "input[name=?]", "reading_time[from_page]"

      assert_select "input[name=?]", "reading_time[to_page]"

      assert_select "input[name=?]", "reading_time[book_id]"

      assert_select "textarea[name=?]", "reading_time[note]"
    end
  end
end
