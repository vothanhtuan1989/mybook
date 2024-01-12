require 'rails_helper'

RSpec.describe "plans/edit", type: :view do
  let(:plan) {
    Plan.create!(
      name: "MyString",
      priority: 1,
      status: 1,
      description: "MyText",
      active: false
    )
  }

  before(:each) do
    assign(:plan, plan)
  end

  it "renders the edit plan form" do
    render

    assert_select "form[action=?][method=?]", plan_path(plan), "post" do

      assert_select "input[name=?]", "plan[name]"

      assert_select "input[name=?]", "plan[priority]"

      assert_select "input[name=?]", "plan[status]"

      assert_select "textarea[name=?]", "plan[description]"

      assert_select "input[name=?]", "plan[active]"
    end
  end
end
