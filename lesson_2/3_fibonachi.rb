
# Создаём пустой массив и переменные
array = []
num1 = 0
num2 = 1

# Цикл добавляющий в массив числа Фибоначчи до 100
while num1 <= 100 do 
	array.push (num1)
	num1, num2 = num2, num1 + num2
end

# Выводим массив
puts array