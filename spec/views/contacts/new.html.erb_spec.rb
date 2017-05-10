require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      :date => "",
      :reason => "",
      :details => "",
      :customer_id => 1
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input[name=?]", "contact[date]"

      assert_select "input[name=?]", "contact[reason]"

      assert_select "input[name=?]", "contact[details]"

      assert_select "input[name=?]", "contact[customer_id]"
    end
  end
end
