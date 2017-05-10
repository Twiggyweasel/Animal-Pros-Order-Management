require 'rails_helper'

RSpec.describe Customer, type: :model do
  it "returns customer's full name" do
    customer = Customer.create!(first_name: 'Richard', last_name: 'Wise', email: 'orsusbass@gmail.com', address1: '13308 W 96th Ter', city: 'Lenexa', state: 'KS', zip: '66215')

    expect(customer.fullname).to eq('Richard Wise')
  end
end
