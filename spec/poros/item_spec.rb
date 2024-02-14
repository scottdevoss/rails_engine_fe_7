require "rails_helper"

RSpec.describe Item do
  it "exists" do
    attrs = {:id=>"4",
      :type=>"item",
      :attributes=>
       {:name=>"Item Nemo Facere",
        :description=>"Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.",
        :unit_price=>42.91,
        :merchant_id=>1}}

    item = Item.new(attrs)

    expect(item).to be_a Item
    expect(item.name).to eq("Item Nemo Facere")
  end
end