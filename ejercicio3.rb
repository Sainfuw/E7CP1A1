h = { 'x' => 1, 'y' => 2 }
# Ejercicio1
h['z'] = 3
# Ejercicio2
h['x'] = 5
# Ejercicio3
h.delete('y')
# Ejercicio4
h.each_key do |key|
  puts 'yeeah' if key == 'z'
end
# Ejercicio5
h = h.invert
puts h
