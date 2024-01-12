require 'rails_helper'

RSpec.describe "user_groups/show", type: :view do
  before(:each) do
    assign(:user_group, UserGroup.create!(
      user_id: 2,
      group_id: 3,
      role: 4,
      status: 5,
      user_group_type: 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end
