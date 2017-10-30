file = File.open('products.txt', 'r')
content = file.readlines
file.close

option = 0

while option != 6

  puts 'seleccione una opcion'
  puts '1) existencias'
  puts '2) mostrar stock de un producto'
  puts '3) mostrar productos no registrados'
  puts '4) mostrar productos con menor stock al ingresado'
  puts '5) ingresar nuevo producto'
  puts '6) salir'

  option = gets.chomp.to_i

  if option <= 0 || option > 6
    puts 'eleccion invalida'
    puts 'ingrese un valor dentro del rango establecido'
    puts
  elsif option == 1
    option1 = 0

    while option1 != 'd'
      puts 'a) mostrar existencias por producto'
      puts 'b) mostrar existencia total por tienda'
      puts 'c) mostrar existencia total de todas las tiendas'
      puts 'd) volver al menu principal'

      option1 = gets.chomp

      if option1 < 'a' || option1 > 'd'
        puts 'eleccion invalida'
        puts 'ingrese un valor dentro del rango establecido'
        puts
      elsif option1 == 'a'
        content.each do |x|
          a = x.split(', ')
          puts "el producto #{a[0]} tiene un stock total de #{a[1].to_i + a[2].to_i + a[3].to_i}"
        end
        puts
      elsif option1 == 'b'
        content.each do |x|
          puts x
        end
      elsif option1 == 'c'
        store1 = 0
        store2 = 0
        store3 = 0

        content.each do |x|
          a = x.split(', ')
          store1 += a[1].to_i
          store2 += a[2].to_i
          store3 += a[3].to_i
        end

        puts "el stock total de la 1 es #{store1}"
        puts "el stock total de la 2 es #{store2}"
        puts "el stock total de la 3 es #{store3}"
        puts
      end
    end
  elsif option == 2
    puts 'ingrese el producto'
    option2 = gets.chomp

    content.each do |x|
      a = x.split(', ')
      if a[0].downcase == option2.downcase
        suma = a[1].to_i + a[2].to_i + a[3].to_i
      end
      puts suma
    end
  elsif option == 3
    content.each do |x|
      a = x.split(', ')
      a.each_with_index do |x, y|
        if x.chomp == 'NR'
          puts "el producto #{a[0]} no se encuentra registrado en la bodega #{y}"
        end
      end
    end
  elsif option == 4
    puts 'ingrese un valor'
    option4 = gets.chomp.to_i

    content.each do |x|
      a = x.split(', ')
      suma = a[1].to_i + a[2].to_i + a[3].to_i

      if suma < option4
        puts "el producto #{a[0]} tiene una existencia total de #{suma}"
      end
    end
  elsif option == 5
    puts 'ingrese el nombre del producto'
    nuevo = gets.chomp
    puts 'ingrese stock 1'
    stock1 = gets.chomp
    puts 'ingrese stock 2'
    stock2 = gets.chomp
    puts 'ingrese stock 3'
    stock3 = gets.chomp

    file = File.open('products.txt', 'a')
    file.puts "#{nuevo}, #{stock1}, #{stock2}, #{stock3}"
    file.close
  end
end
