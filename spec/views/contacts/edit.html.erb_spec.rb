require 'rails_helper'

RSpec.describe "contacts/edit", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :date => "",
      :reason => "",
      :details => "",
      :customer_id => 1
    ))
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do

      assert_select "input[name=?]", "contact[date]"

      assert_select "input[name=?]", "contact[reason]"

      assert_select "input[name=?]", "contact[details]"

      assert_select "input[name=?]", "contact[customer_id]"
    end
  end
end
