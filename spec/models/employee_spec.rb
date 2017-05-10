require 'rails_helper'

RSpec.describe Employee, type: :model do
  it "returns only active employees" do
    active = Employee.create!(first_name: "Richard", last_name: "Wise", region: 'North', position: "Tech", phone: "9134211521", hire_date: '2017-03-02', is_active: true)
    inactive = Employee.create!(first_name: "Richard", last_name: "Wise", region: 'North', position: "Tech", phone: "9134211521", hire_date: '2017-03-02', is_active: false)

    expect(Employee.active).to eq([active])
  end

  it "returns only inactive employees" do
    active = Employee.create!(first_name: "Richard", last_name: "Wise", region: 'North', position: "Tech", phone: "9134211521", hire_date: '2017-03-02', is_active: true)
    inactive = Employee.create!(first_name: "Richard", last_name: "Wise", region: 'North', position: "Tech", phone: "9134211521", hire_date: '2017-03-02', is_active: false)

    expect(Employee.inactive).to eq([inactive])
  end

  it "returns employees full name" do
    employee = Employee.create!(first_name: "Richard", last_name: "Wise", region: 'North', position: "Tech", phone: "9134211521", hire_date: '2017-03-02', is_active: true)

    expect(employee.fullname).to eq("Richard Wise")
  end
end
