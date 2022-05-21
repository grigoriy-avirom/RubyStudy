
# Вводим хэш с месяцами и количеством дней
months = {"january" => 31, "febrary" => 28, "march" => 31, 
	"april" => 30, "may" => 31, "june" => 30, 
	"july" => 31, "augst" => 31, "september" => 30, 
	"october" => 31, "november" => 30, "december" => 31}

# Перебираем хэш и выводим ключи
months.each do |key, value|
	if value == 30
		then puts "#{key}"
	end
end