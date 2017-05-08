require 'rails_helper'

RSpec.describe "faculties/new", type: :view do
  before(:each) do
    assign(:faculty, Faculty.new(
      :university_id => 1,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new faculty form" do
    render

    assert_select "form[action=?][method=?]", faculties_path, "post" do

      assert_select "input[name=?]", "faculty[university_id]"

      assert_select "input[name=?]", "faculty[first_name]"

      assert_select "input[name=?]", "faculty[last_name]"

      assert_select "input[name=?]", "faculty[email]"
    end
  end
end
