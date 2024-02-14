class MerchantsController < ApplicationController
  def index
    @facade = MerchantFacade.new
  end

  def show
    @merchant_id = params[:id]
    @facade = ItemFacade.new(params[:id])
  end
end