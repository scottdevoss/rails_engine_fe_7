class Item
  attr_reader :name
  def initialize(attributes)
    @name = attributes[:attributes][:name]
  end
end 