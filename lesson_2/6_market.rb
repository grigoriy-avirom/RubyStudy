
# Стартовое приглашение и цикл 
cart = {}
puts "Вводите названия товаров по очереди, для окончания напишете 'Стоп':"
loop do
  puts "Введите название товара:"
  title = gets.chomp
  break if title == "Стоп" || title == "стоп"

# Вводим товары и цены
  puts 'Введите цену за единицу товара'
  price = gets.chomp
  puts 'Введите количество товара'
  quantity = gets.chomp

  cart[title] = { price: price, quantity: quantity }
end

# Считаем сумму покупок и выводим итог
sum = 0
cart.each do |title, value|
  total = value[:price].to_i * value[:quantity].to_f
  sum += total
  puts "#{title}: #{value[:price]} * #{value[:quantity]} = #{total}"
end

puts "Итого: #{sum}"