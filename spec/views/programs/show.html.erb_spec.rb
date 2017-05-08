require 'rails_helper'

RSpec.describe "programs/show", type: :view do
  before(:each) do
    @program = assign(:program, Program.create!(
      :user_id => 2,
      :university_id => 3,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Name/)
  end
end
