class ItemFacade
  def initialize(id)
    @id = id
  end

  def items
    service = ItemService.new
    json = service.items_by_merchant(@id)
    @items = json[:data].map do |item|
      Item.new(item)
    end
  end
end