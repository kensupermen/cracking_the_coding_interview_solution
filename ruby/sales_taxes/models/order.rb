class Order
  attr_accessor :total_price, :sales_taxes, :order_details

  def initialize
    @order_details = []
    @total_price = 0
    @sales_taxes = 0
  end

  def add(order_detail)
    @order_details << order_detail
    @total_price += order_detail.price.round(2)
    @sales_taxes +=  order_detail.tax.round(2)
  end
end
