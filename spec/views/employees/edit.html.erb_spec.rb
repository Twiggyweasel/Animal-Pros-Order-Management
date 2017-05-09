require 'rails_helper'

RSpec.describe "employees/edit", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :region => "MyString",
      :position => "MyString",
      :phone => "MyString",
      :is_active => false
    ))
  end

  it "renders the edit employee form" do
    render

    assert_select "form[action=?][method=?]", employee_path(@employee), "post" do

      assert_select "input[name=?]", "employee[first_name]"

      assert_select "input[name=?]", "employee[last_name]"

      assert_select "input[name=?]", "employee[region]"

      assert_select "input[name=?]", "employee[position]"

      assert_select "input[name=?]", "employee[phone]"

      assert_select "input[name=?]", "employee[is_active]"
    end
  end
end
