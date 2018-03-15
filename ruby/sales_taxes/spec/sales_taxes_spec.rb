require './models/order.rb'
require './models/product.rb'
require './sales_taxes.rb'

RSpec.describe SalesTaxes do
  let(:make_order) { SalesTaxes.new.make_order(orders) }

  before do
    make_order
  end

  context 'input 1' do
    let(:product_1) { Product.new(name: 'book', unit_price: 12.49, category: 'book') }
    let(:product_2) { Product.new(name: 'music cd', unit_price: 14.99) }
    let(:product_3) { Product.new(name: 'chocolate bar', unit_price: 0.85, category: 'food') }

    let(:order_item_1) { Order.new(product_1, 1) }
    let(:order_item_2) { Order.new(product_2, 1) }
    let(:order_item_3) { Order.new(product_3, 1) }

    let(:orders) do
      orders = []
      orders << order_item_1
      orders << order_item_2
      orders << order_item_3
    end

    it 'return receipt' do
      # expect(make_order).to output("1, book, 12.49").to_stdout
    end
  end

  context 'input 2' do
    let(:product_1) { Product.new(name: 'imported box of chocolates', unit_price: 10.00, category: 'food', is_import: true) }
    let(:product_2) { Product.new(name: 'imported bottle of perfume', unit_price: 47.50, category: 'orther', is_import: true) }

    let(:order_item_1) { Order.new(product_1, 1) }
    let(:order_item_2) { Order.new(product_2, 1) }

    let(:orders) do
      orders = []
      orders << order_item_1
      orders << order_item_2
    end

    it 'return receipt' do
      # expect(make_order).to output("1, book, 12.49").to_stdout
    end
  end
end
