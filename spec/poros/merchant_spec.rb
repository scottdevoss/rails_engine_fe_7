require "rails_helper"

RSpec.describe Merchant do
  it "exists" do
    attrs = {:id=>"1", :type=>"merchant", :attributes=>{:name=>"Schroeder-Jerde"}}

    merchant = Merchant.new(attrs)

    expect(merchant).to be_a Merchant
    expect(merchant.id).to eq("1")
    expect(merchant.name).to eq("Schroeder-Jerde")
  end
end