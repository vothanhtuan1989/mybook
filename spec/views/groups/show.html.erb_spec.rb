require 'rails_helper'

RSpec.describe "groups/show", type: :view do
  before(:each) do
    assign(:group, Group.create!(
      name: "Name",
      user_groups_count: 2,
      book_groups_count: 3,
      description: "MyText",
      group_type: 4,
      avatar: "Avatar",
      status: 5,
      member_number_limitation: 6,
      book_number_required: 7,
      join_fee: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Avatar/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/9.99/)
  end
end
