personas = ['Carolina', 'Alejandro', 'Maria Jesús', 'Valentín']
edades = [32, 28, 41, 19]

# Ejercicio1
# Programado
personas_hash = {}
personas.each_with_index do |dato, indice|
  personas_hash[dato] = edades[indice]
end
puts personas_hash
# Metodo o personas_hash = personas.zip(edades).to_h
personas_hash = Hash[personas.zip edades]
puts personas_hash
# Segundo Metodo
personas_hash = [personas, edades].transpose.to_h
puts personas_hash

# Ejercicio2
# Programado
def promedio_hash(hash)
  sum = 0
  hash.values.each { |i| sum += i }
  sum / hash.length.to_f
end
puts promedio_hash(personas_hash)

# Metodo
def promedio_hash2(hash)
  hash.values.map.sum / hash.length.to_f
end
puts promedio_hash2(personas_hash)
