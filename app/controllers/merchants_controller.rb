class MerchantsController < ApplicationController
  def index
    @facade = MerchantFacade.new
  end

  def show
    @merchant_id = params[:id]
    @facade = ItemFacade.new(params[:id])
   
    # conn = Faraday.new(url: "http://localhost:3000")
    # response = conn.get("/api/v1/merchants/#{@merchant_id}/items")
    # json = JSON.parse(response.body, symbolize_names: true)
    # @items = json[:data].map do |item|
    #   Item.new(item)
    # end
  end
end