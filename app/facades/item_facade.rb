class ItemFacade
  def initialize(id)
    @id = id
  end

  def items
    # conn = Faraday.new(url: "http://localhost:3000")
    # response = conn.get("/api/v1/merchants/#{@id}/items")
    # json = JSON.parse(response.body, symbolize_names: true)

    service = ItemService.new
    json = service.items_by_merchant(@id)
    @items = json[:data].map do |item|
      Item.new(item)
    end
  end
end