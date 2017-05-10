require 'rails_helper'

RSpec.describe "employees/show", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :region => "Region",
      :position => "Position",
      :phone => "Phone",
      :is_active => false,
      :hire_date => "2017-03-15"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Region/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2017-03-15/)
  end
end
