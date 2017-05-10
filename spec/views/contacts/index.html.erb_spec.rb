require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :date => "2017-03-16",
        :reason => "Reason",
        :details => "Details",
        :customer_id => 1
      ),
      Contact.create!(
        :date => "2017-03-16",
        :reason => "Reason",
        :details => "Details",
        :customer_id => 1
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "2017-03-16".to_s, :count => 2
    assert_select "tr>td", :text => "Reason".to_s, :count => 2
    assert_select "tr>td", :text => "Details".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
