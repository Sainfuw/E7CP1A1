meses = %w[Enero Febrero Marzo Abril Mayo]
ventas = [2000, 3000, 1000, 5000, 4000]

# Ejercicio1
h = meses.zip(ventas).to_h
puts h
h = h.invert
puts h

# Ejercicio2
# Programado
min = -1
high = ''
h.each do |key, value|
  if min < key
    high = value
    min = key
  end
end
puts high
# Metodo
high = h.invert.key(h.invert.values.max)
puts high
