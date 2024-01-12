require 'rails_helper'

RSpec.describe "reading_missions/new", type: :view do
  before(:each) do
    assign(:reading_mission, ReadingMission.new(
      name: "MyString",
      status: 1,
      exact_page: 1,
      from_page: 1,
      to_page: 1,
      book_id: 1,
      priority: 1,
      active: false
    ))
  end

  it "renders new reading_mission form" do
    render

    assert_select "form[action=?][method=?]", reading_missions_path, "post" do

      assert_select "input[name=?]", "reading_mission[name]"

      assert_select "input[name=?]", "reading_mission[status]"

      assert_select "input[name=?]", "reading_mission[exact_page]"

      assert_select "input[name=?]", "reading_mission[from_page]"

      assert_select "input[name=?]", "reading_mission[to_page]"

      assert_select "input[name=?]", "reading_mission[book_id]"

      assert_select "input[name=?]", "reading_mission[priority]"

      assert_select "input[name=?]", "reading_mission[active]"
    end
  end
end
