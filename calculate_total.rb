def calculate_total(order)
  price = 0
  tax_rate = 0.05
  price += (order[:item_price] * order[:item_quantity]) if order.is_a?(Hash)
  order.each { |item| price += (item[:item_price] * item[:item_quantity]) } if order.is_a?(Array)
  tax_included_price = (price * tax_rate) + price
  "$%.2f" % tax_included_price
end
