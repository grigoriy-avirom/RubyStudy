
puts 'Введите первую сторону вашего треугольника:'
a = gets.to_i
puts 'Введите вторую сторону вашего треугольника:'
b = gets.to_i
puts 'Введите третью сторону вашего треугольника:'
c = gets.to_i
sorting = [a, b, c].sort

if sorting[2] ** 2 == sorting[0] ** 2 + sorting[1] ** 2
  puts 'Ваш треугольник прямоугольный'
elsif sorting[0] - sorting[1] == 0 && sorting[1] != sorting[2]
  puts 'Ваш треугольник равнобедренный'
elsif sorting[0] == sorting[1] && sorting[1] == sorting[2]
  puts 'Ваш треугольник равносторонний'
else
  puts 'Ваш треугольник не является прямоугольным, равнобедренным или равносторонним'
end