require 'rails_helper'

RSpec.describe "user_groups/new", type: :view do
  before(:each) do
    assign(:user_group, UserGroup.new(
      user_id: 1,
      group_id: 1,
      role: 1,
      status: 1,
      user_group_type: 1
    ))
  end

  it "renders new user_group form" do
    render

    assert_select "form[action=?][method=?]", user_groups_path, "post" do

      assert_select "input[name=?]", "user_group[user_id]"

      assert_select "input[name=?]", "user_group[group_id]"

      assert_select "input[name=?]", "user_group[role]"

      assert_select "input[name=?]", "user_group[status]"

      assert_select "input[name=?]", "user_group[user_group_type]"
    end
  end
end
