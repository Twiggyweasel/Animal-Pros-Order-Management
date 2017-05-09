require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :day_number => "MyString",
      :night_number => "MyString",
      :referral_code => "MyString"
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input[name=?]", "customer[first_name]"

      assert_select "input[name=?]", "customer[last_name]"

      assert_select "input[name=?]", "customer[email]"

      assert_select "input[name=?]", "customer[address1]"

      assert_select "input[name=?]", "customer[address2]"

      assert_select "input[name=?]", "customer[city]"

      assert_select "input[name=?]", "customer[state]"

      assert_select "input[name=?]", "customer[zip]"

      assert_select "input[name=?]", "customer[day_number]"

      assert_select "input[name=?]", "customer[night_number]"

      assert_select "input[name=?]", "customer[referral_code]"
    end
  end
end
