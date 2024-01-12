require 'rails_helper'

RSpec.describe "groups/edit", type: :view do
  let(:group) {
    Group.create!(
      name: "MyString",
      user_groups_count: 1,
      book_groups_count: 1,
      description: "MyText",
      group_type: 1,
      avatar: "MyString",
      status: 1,
      member_number_limitation: 1,
      book_number_required: 1,
      join_fee: "9.99"
    )
  }

  before(:each) do
    assign(:group, group)
  end

  it "renders the edit group form" do
    render

    assert_select "form[action=?][method=?]", group_path(group), "post" do

      assert_select "input[name=?]", "group[name]"

      assert_select "input[name=?]", "group[user_groups_count]"

      assert_select "input[name=?]", "group[book_groups_count]"

      assert_select "textarea[name=?]", "group[description]"

      assert_select "input[name=?]", "group[group_type]"

      assert_select "input[name=?]", "group[avatar]"

      assert_select "input[name=?]", "group[status]"

      assert_select "input[name=?]", "group[member_number_limitation]"

      assert_select "input[name=?]", "group[book_number_required]"

      assert_select "input[name=?]", "group[join_fee]"
    end
  end
end
