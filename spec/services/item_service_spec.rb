require "rails_helper"

describe ItemService do
  context "class methods" do
    context "#items_by_merchant" do
      it "returns item data", :vcr do
        items = ItemService.new.items_by_merchant("1")

        expect(items).to be_a Hash
        expect(items[:data]).to be_an Array
        
        item_data = items[:data].first

        expect(item_data).to have_key(:id)
        expect(item_data).to have_key(:type)
        expect(item_data).to have_key(:attributes)

        expect(item_data[:attributes]).to have_key(:name)
        expect(item_data[:attributes][:name]).to be_a String
      end
    end
  end
end