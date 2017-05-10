require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ContactsHelper. For example:
#
# describe ContactsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ContactsHelper, type: :helper do
  it "Provides a list of reasons" do
    expect(reasons).to eq(
      [
        ["Reason 1", "Reason 1"],
        ["Reason 2", "Reason 2"]
      ]
    )
  end
end
