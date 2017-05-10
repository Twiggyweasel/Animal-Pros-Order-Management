require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :region => "Region",
        :position => "Position",
        :phone => "Phone",
        :is_active => false,
        :hire_date => "2017-03-15"
      ),
      Employee.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :region => "Region",
        :position => "Position",
        :phone => "Phone",
        :is_active => false,
        :hire_date => "2017-03-15"
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "2017-03-15".to_s, :count => 2
  end
end
