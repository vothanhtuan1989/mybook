require 'rails_helper'

RSpec.describe "plans/show", type: :view do
  before(:each) do
    assign(:plan, Plan.create!(
      name: "Name",
      priority: 2,
      status: 3,
      description: "MyText",
      active: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
