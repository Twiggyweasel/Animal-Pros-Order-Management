require 'rails_helper'

RSpec.describe "employees/new", type: :view do
  before(:each) do
    assign(:employee, Employee.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :region => "MyString",
      :position => "MyString",
      :phone => "MyString",
      :is_active => false
    ))
  end

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

      assert_select "input[name=?]", "employee[first_name]"

      assert_select "input[name=?]", "employee[last_name]"

      assert_select "input[name=?]", "employee[region]"

      assert_select "input[name=?]", "employee[position]"

      assert_select "input[name=?]", "employee[phone]"

      assert_select "input[name=?]", "employee[is_active]"
    end
  end
end
