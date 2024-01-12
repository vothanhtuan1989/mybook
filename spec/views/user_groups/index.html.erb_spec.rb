require 'rails_helper'

RSpec.describe "user_groups/index", type: :view do
  before(:each) do
    assign(:user_groups, [
      UserGroup.create!(
        user_id: 2,
        group_id: 3,
        role: 4,
        status: 5,
        user_group_type: 6
      ),
      UserGroup.create!(
        user_id: 2,
        group_id: 3,
        role: 4,
        status: 5,
        user_group_type: 6
      )
    ])
  end

  it "renders a list of user_groups" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
  end
end
