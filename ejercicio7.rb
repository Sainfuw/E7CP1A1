inventario = { 'Notebooks' => 4, 'PC Escritorio' => 6,
               'Routers' => 10, 'Impresoras' => 6 }

# Metodos
def agregar(hash)
  print 'Ingrese producto y valor separados por una coma: '
  key = gets.chomp
  product = key.split(', ')
  hash[product[0]] = product[1].to_i
  puts "Producto #{product} agregado"
end

def borrar(hash)
  print 'Ingrese el nombre del producto a Eliminar: '
  key = gets.chomp
  hash.delete(key)
  puts 'Producto eliminado'
end

def actualizar(hash)
  print 'Ingrese el nombre del item a actualizar: '
  key = gets.chomp
  print 'Ingrese stock del producto: '
  value = gets.chomp.to_i
  hash[key] = value
end

def stock(hash)
  puts hash
end

def mayor(hash)
  puts "El producto con mayor stock es: #{hash.key(hash.values.max)}"
end

def consulta(hash)
  print 'Ingrese el producto a consultar: '
  key = gets.chomp
  if hash.key? key
    puts 'El producto si existe'
  else
    puts 'El producto no existe'
  end
end

# Main
opt = 0
while opt != 7
  system('clear')
  puts '1.- Agregar Producto'
  puts '2.- Eliminar Producto'
  puts '3.- Actualizar'
  puts '4.- Stock'
  puts '5.- Item con mayor stock'
  puts '6.- Consultar Producto'
  puts '7.- Salir'
  print 'Ingrese una opcion: '
  opt = gets.chomp.to_i
  case opt
  when 1
    agregar(inventario)
    gets
  when 2
    borrar(inventario)
    gets
  when 3
    actualizar(inventario)
    gets
  when 4
    stock(inventario)
    gets
  when 5
    mayor(inventario)
    gets
  when 6
    consulta(inventario)
    gets
  end
end
puts 'Programa terminado'
