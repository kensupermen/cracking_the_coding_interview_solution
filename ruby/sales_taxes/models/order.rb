class Order
  attr_accessor :quantity, :product

  BASIC_TAX = 0.05
  IMPORT_TAX = 0.1


  def initialize(product, quantity)
    @product = product
    @quantity = quantity
  end

  def price
    unit_price_with_tax * quantity
  end

  def unit_price_with_tax
    product.unit_price + tax
  end

  def tax
    tax = 0
    # if product is not books, food, and medical products
    # tax += product.unit_price * BASIC_TAX

    # if product has been imported
    # tax += product.unit_price * IMPORT_TAX
    tax
  end
end
