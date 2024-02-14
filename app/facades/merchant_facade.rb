class MerchantFacade
  def merchants
    service = MerchantService.new
    json = service.merchants
    @merchants = json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end