require 'minitest/autorun'
require './calculator'

class CalculatorTest < MiniTest::Unit::TestCase
  def test_calculate_total_with_empty_order
    assert_equal '$0.00', calculate_total([])
  end

  def test_calculate_total_with_one_line_item
    assert_equal '$4.20', calculate_total([
      { quantity: 2, unit_price: 2.0}
    ])
  end

  def test_calculate_total_with_two_line_items
    assert_equal '$7.00', calculate_total([
      { quantity: 2, unit_price: 2.0},
      { quantity: 3, unit_price: 0.89}
    ])
  end
end
