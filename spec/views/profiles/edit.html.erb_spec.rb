require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  let(:profile) {
    Profile.create!(
      number_of_reading: 1,
      number_page_per_reading: 1,
      current_book_id: 1,
      user_id: 1
    )
  }

  before(:each) do
    assign(:profile, profile)
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(profile), "post" do

      assert_select "input[name=?]", "profile[number_of_reading]"

      assert_select "input[name=?]", "profile[number_page_per_reading]"

      assert_select "input[name=?]", "profile[current_book_id]"

      assert_select "input[name=?]", "profile[user_id]"
    end
  end
end
