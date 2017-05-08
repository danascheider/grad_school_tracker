require 'rails_helper'

RSpec.describe "faculties/edit", type: :view do
  before(:each) do
    @faculty = assign(:faculty, Faculty.create!(
      :university_id => 1,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit faculty form" do
    render

    assert_select "form[action=?][method=?]", faculty_path(@faculty), "post" do

      assert_select "input[name=?]", "faculty[university_id]"

      assert_select "input[name=?]", "faculty[first_name]"

      assert_select "input[name=?]", "faculty[last_name]"

      assert_select "input[name=?]", "faculty[email]"
    end
  end
end
