require './models/order.rb'
class SalesTaxes

  def make_order(order_details)
    order = Order.new
    
    order_details.each do |order_detail|
      order.add order_detail
    end

    output_stdout(order)
    order
  end

  private
  def output_stdout(order)
    puts '----------------'

    order_details = order.order_details

    order_details.each do |order_detail|
      product = order_detail.product
      puts "#{order_detail.quantity}, #{product.name}, #{format("%.2f", order_detail.unit_price_with_tax)}"
    end

    puts "Sales Taxes: #{format("%.2f", order.sales_taxes)}"
    puts "Total: #{format("%.2f", order.total_price)}"
  end
end
