class MerchantFacade
  def merchants
    # conn = Faraday.new(url: "http://localhost:3000")
    # response = conn.get("/api/v1/merchants")
    # json = JSON.parse(response.body, symbolize_names: true)

    service = MerchantService.new
    json = service.merchants
    @merchants = json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end