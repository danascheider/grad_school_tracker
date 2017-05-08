require 'rails_helper'

RSpec.describe "programs/index", type: :view do
  before(:each) do
    assign(:programs, [
      Program.create!(
        :user_id => 2,
        :university_id => 3,
        :name => "Name"
      ),
      Program.create!(
        :user_id => 2,
        :university_id => 3,
        :name => "Name"
      )
    ])
  end

  it "renders a list of programs" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
