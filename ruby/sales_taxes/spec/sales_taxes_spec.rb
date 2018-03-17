require './models/order_detail.rb'
require './models/product.rb'
require './sales_taxes.rb'

RSpec.describe SalesTaxes do
  let(:make_order) { SalesTaxes.new.make_order(order_details) }

  before do
    make_order
  end

  context 'input 1' do
    let(:product_1) { Product.new(name: 'book', unit_price: 12.49, category: 'book') }
    let(:product_2) { Product.new(name: 'music cd', unit_price: 14.99) }
    let(:product_3) { Product.new(name: 'chocolate bar', unit_price: 0.85, category: 'food') }

    let(:order_detail_item_1) { OrderDetail.new(product_1, 1) }
    let(:order_detail_item_2) { OrderDetail.new(product_2, 1) }
    let(:order_detail_item_3) { OrderDetail.new(product_3, 1) }

    let(:order_details) do
      items = []
      items << order_detail_item_1
      items << order_detail_item_2
      items << order_detail_item_3
      items
    end

    it 'return receipt with 3 items' do
      expect(make_order.order_details.count).to eq 3
      expect(make_order.sales_taxes).to eq 1.50
      expect(make_order.total_price).to eq 29.83
    end
  end

  context 'input 2' do
    let(:product_1) do
      Product.new(name: 'imported box of chocolates',
                  unit_price: 10.00,
                  category: 'food',
                  is_import: true)
    end

    let(:product_2) do
      Product.new(name: 'imported bottle of perfume',
                  unit_price: 47.50,
                  category: 'orther',
                  is_import: true)
    end

    let(:order_detail_item_1) { OrderDetail.new(product_1, 1) }
    let(:order_detail_item_2) { OrderDetail.new(product_2, 1) }

    let(:order_details) do
      items = []
      items << order_detail_item_1
      items << order_detail_item_2
      items
    end

    it 'return receipt with 2 items' do
      expect(make_order.order_details.count).to eq 2
      expect(make_order.sales_taxes).to eq 7.65
      expect(make_order.total_price).to eq 65.15
    end
  end

  context 'input 3' do
    let(:product_1) do
      Product.new(name: 'imported bottle of perfume',
                  unit_price: 27.99,
                  category: 'orther',
                  is_import: true)
    end
    let(:product_2) do
      Product.new(name: 'bottle of perfume',
                  unit_price: 18.99,
                  category: 'orther',
                  is_import: false)
    end
    let(:product_3) do
      Product.new(name: 'packet of headache pills',
                  unit_price: 9.75,
                  category: 'medical',
                  is_import: false)
    end
    let(:product_4) do
      Product.new(name: 'box of imported chocolates',
                  unit_price: 11.25,
                  category: 'food',
                  is_import: true)
    end

    let(:order_detail_item_1) { OrderDetail.new(product_1, 1) }
    let(:order_detail_item_2) { OrderDetail.new(product_2, 1) }
    let(:order_detail_item_3) { OrderDetail.new(product_3, 1) }
    let(:order_detail_item_4) { OrderDetail.new(product_4, 1) }

    let(:order_details) do
      items = []
      items << order_detail_item_1
      items << order_detail_item_2
      items << order_detail_item_3
      items << order_detail_item_4
      items
    end

    it 'return receipt with 4 items' do
      expect(make_order.order_details.count).to eq 4
      # expect(make_order.sales_taxes).to eq 6.70
      # expect(make_order.total_price).to eq 74.68
    end
  end
end
