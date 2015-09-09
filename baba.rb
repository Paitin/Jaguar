restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# write the each loop here. 
restaurant_menu.each do |x, y|
  restaurant_menu[x]=1.1 * y
end
puts restaurant_menu

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
restaurant_menu.each do |item, price|
  restaurant_menu[item] = price + (price * 0.1)
end

puts restaurant_menu