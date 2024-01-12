require 'rails_helper'

RSpec.describe "plans/new", type: :view do
  before(:each) do
    assign(:plan, Plan.new(
      name: "MyString",
      priority: 1,
      status: 1,
      description: "MyText",
      active: false
    ))
  end

  it "renders new plan form" do
    render

    assert_select "form[action=?][method=?]", plans_path, "post" do

      assert_select "input[name=?]", "plan[name]"

      assert_select "input[name=?]", "plan[priority]"

      assert_select "input[name=?]", "plan[status]"

      assert_select "textarea[name=?]", "plan[description]"

      assert_select "input[name=?]", "plan[active]"
    end
  end
end
