require 'rails_helper'

RSpec.describe "reading_missions/edit", type: :view do
  let(:reading_mission) {
    ReadingMission.create!(
      name: "MyString",
      status: 1,
      exact_page: 1,
      from_page: 1,
      to_page: 1,
      book_id: 1,
      priority: 1,
      active: false
    )
  }

  before(:each) do
    assign(:reading_mission, reading_mission)
  end

  it "renders the edit reading_mission form" do
    render

    assert_select "form[action=?][method=?]", reading_mission_path(reading_mission), "post" do

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
