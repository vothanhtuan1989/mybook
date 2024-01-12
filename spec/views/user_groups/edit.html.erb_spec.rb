require 'rails_helper'

RSpec.describe "user_groups/edit", type: :view do
  let(:user_group) {
    UserGroup.create!(
      user_id: 1,
      group_id: 1,
      role: 1,
      status: 1,
      user_group_type: 1
    )
  }

  before(:each) do
    assign(:user_group, user_group)
  end

  it "renders the edit user_group form" do
    render

    assert_select "form[action=?][method=?]", user_group_path(user_group), "post" do

      assert_select "input[name=?]", "user_group[user_id]"

      assert_select "input[name=?]", "user_group[group_id]"

      assert_select "input[name=?]", "user_group[role]"

      assert_select "input[name=?]", "user_group[status]"

      assert_select "input[name=?]", "user_group[user_group_type]"
    end
  end
end
