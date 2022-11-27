puts "Введіть ціну цукерок для 1 кг"
price = gets.strip.to_f
5.times{puts "Введіть в кг вагу цукерок, ціну яких Ви хочете дізнатися"; amount = gets.strip.to_f; puts(price * amount)}