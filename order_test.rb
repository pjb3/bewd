require 'minitest/autorun'
require './order'

DATA_URL = 'https://gist.githubusercontent.com/pjb3/4e8411095659db540298/raw/f4aafcccc749e3d110b2c87ce6ec45c75ff0416f/products.csv'

class OrderTest < MiniTest::Unit::TestCase
  def test_total_price
    Product.load(DATA_URL)

    order = Order.new(tax_rate: 0.05)

    order.add 2, "Muffin"
    order.add 1, "Coffee"
    order.add 1, "Smoothie"

    assert_equal 14.41, order.total_price
  end
end
