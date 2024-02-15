require "rails_helper"

describe MerchantService do
  context "class methods" do
    context "#merchants" do
      it "returns merchant data", :vcr do
        merchants = MerchantService.new.merchants

        expect(merchants).to be_a Hash
        expect(merchants[:data]).to be_an Array
        
        merchant_data = merchants[:data].first

        expect(merchant_data).to have_key(:id)
        expect(merchant_data).to have_key(:type)
        expect(merchant_data).to have_key(:attributes)

        expect(merchant_data[:attributes]).to have_key(:name)
        expect(merchant_data[:attributes][:name]).to be_a String
      end
    end
  end
end