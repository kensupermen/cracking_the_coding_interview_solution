class Order
  attr_accessor :quantity, :product

  BASIC_TAX = 0.05
  IMPORT_TAX = 0.1


  def initialize(product, quantity)
    @product = product
    @quantity = quantity
  end

  def price
    (unit_price_with_tax * quantity).round(2)
  end

  def unit_price_with_tax
    (product.unit_price + tax).round(2)
  end

  def tax
    tax = 0
    # if product is not books, food, and medical products
    unless product.category == 'book' || product.category == 'food' || product.category == 'medical'
      tax += product.unit_price * BASIC_TAX 
    end

    # if product has been imported
    tax += product.unit_price * IMPORT_TAX if product.is_import == true
    tax
  end
end
