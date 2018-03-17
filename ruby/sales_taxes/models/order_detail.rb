class OrderDetail
  attr_accessor :quantity, :product

  BASIC_TAX = 0.1
  IMPORT_TAX = 0.05

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
    unless product.category == 'book' || product.category == 'food' || product.category == 'medical'
      tax += product.unit_price * BASIC_TAX
    end

    # if product has been imported
    tax += product.unit_price * IMPORT_TAX if product.is_import == true
    (tax * 20).round/20.0
  end
end
