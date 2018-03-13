class SalesTaxes
  def make_order(orders)
    total = 0
    sales_tax = 0

    orders.each do |order|
      product = order.product
      total += order.price
      sales_tax += order.tax

      puts "#{order.quantity}, #{product.name}, #{order.unit_price_with_tax}"
    end

    total = total.round(2)
    sales_tax = sales_tax.round(2)

    puts "Sales Taxes: #{sales_tax}"
    puts "Total: #{total}"
  end
end
