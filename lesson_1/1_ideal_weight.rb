
puts "Как тебя зовут?"
name = gets.chomp.to_s	

puts "Каков твой рост в сантиметрах?"
height = gets.chomp.to_i

ideal_weight = (height - 110) * 1.15

puts "Привет, #{name}!"

if ideal_weight < 0 
	puts "Твой вес уже оптимальный!"
else
	puts "Твой идеальный вес: #{ideal_weight.to_i} кг!"
end
