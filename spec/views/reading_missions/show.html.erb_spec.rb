require 'rails_helper'

RSpec.describe "reading_missions/show", type: :view do
  before(:each) do
    assign(:reading_mission, ReadingMission.create!(
      name: "Name",
      status: 2,
      exact_page: 3,
      from_page: 4,
      to_page: 5,
      book_id: 6,
      priority: 7,
      active: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/false/)
  end
end
