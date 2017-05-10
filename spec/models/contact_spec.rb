require 'rails_helper'

RSpec.describe Contact, type: :model do
  it "Should allow valid records" do
    contact = Contact.create!(date: "2017-03-16", reason: "Reason", details: "Details", customer_id: 1)
    expect(contact).to be_valid
  end
end
