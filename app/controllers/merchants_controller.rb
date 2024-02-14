class MerchantsController < ApplicationController
  def index
    conn = Faraday.new(url: "http://localhost:3000")
    response = conn.get("/api/v1/merchants")
    json = JSON.parse(response.body, symbolize_names: true)
    @merchants = json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def show
    @merchant_id = params[:id]
    conn = Faraday.new(url: "http://localhost:3000")
    response = conn.get("/api/v1/merchants/#{@merchant_id}/items")
    json = JSON.parse(response.body, symbolize_names: true)
    @items = json[:data]
  end
end