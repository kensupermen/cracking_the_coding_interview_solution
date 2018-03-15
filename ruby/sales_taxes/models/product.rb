class Product
  attr_accessor :name, :unit_price, :is_import, :category

  def initialize(product)
    @name = product.fetch(:name)
    @unit_price = product.fetch(:unit_price)
    @is_import = product.fetch(:is_import, false)
    @category = product.fetch(:category, 'orther')
  end
end
