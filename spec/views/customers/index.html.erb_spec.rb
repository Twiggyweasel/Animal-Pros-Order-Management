require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :day_number => "Day Number",
        :night_number => "Night Number",
        :referral_code => "Referral Code"
      ),
      Customer.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :day_number => "Day Number",
        :night_number => "Night Number",
        :referral_code => "Referral Code"
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Day Number".to_s, :count => 2
    assert_select "tr>td", :text => "Night Number".to_s, :count => 2
    assert_select "tr>td", :text => "Referral Code".to_s, :count => 2
  end
end
