require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the EmployeesHelper. For example:
#
# describe EmployeesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe EmployeesHelper, type: :helper do
  it "Provides list of regions" do
    expect(regions).to eq(
      [
        ["North", "North"],
        ["South", "South"],
        ["East", "East"],
        ["West", "West"]
      ]
    )
  end

  it "Provides a list of positions" do
    expect(positions).to eq(
      [
        ["Tech", "Tech"],
        ["Pro Team", "Pro Team"],
        ["Lead", "Lead"],
        ["Manager", "Manager"]
      ]
    )
  end
end
