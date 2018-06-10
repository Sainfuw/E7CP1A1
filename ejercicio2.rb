productos = { bebida: 850, chocolate: 1200, galletas: 900, leche: 750 }

# 1
productos.each { |producto, _valor| print producto }
# 2
productos[:cereal] = 2200
# 3
productos[:bebida] = 2000
# 4
arreglo = productos.to_a
# 5
productos.delete(:galletas)

puts
print arreglo
puts
puts productos
