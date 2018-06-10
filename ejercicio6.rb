restaurant_menu = { 'Ramen' => 3, 'Dal Makhani' => 4, 'Coffee' => 2 }

# Ejercicio1
puts "El plato mas caro: #{restaurant_menu.key(restaurant_menu.values.max)}"
# Ejercicio2
puts "El plato mas barato: #{restaurant_menu.key(restaurant_menu.values.min)}"
# Ejercicio3
puts "Promedio: #{restaurant_menu.values.map.sum / restaurant_menu.length.to_f}"
# Ejercicio4
arr_keys = restaurant_menu.keys
puts "Arreglo de Platos:  #{arr_keys}"
# Ejercicio5
arr_values = restaurant_menu.values
puts "Arreglo de valores:  #{arr_values}"
# Ejercicio6
restaurant_menu.each do |key, value|
  restaurant_menu[key] = value * 1.19
end
puts "IVA incluido :  #{restaurant_menu}"
# Ejercicio7
restaurant_menu.each do |key, value|
  restaurant_menu[key] = value * 0.80 if key.include? ' '
end
puts "Descuento 2+ palabras :  #{restaurant_menu}"
