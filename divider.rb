divider = 21
counter = 0
print "Введіть число, яке буде ділитися на #{divider} :"
number = gets.strip.to_i
white counter < 5
if counter == 5
  puts "Кількість спроб завершилася :("
elsif (number % divider == 0)
  puts "Чудово"
  counter += 1
elsif number == divider
  puts "Число не повинно дорівнювати #{divider}"
  counter += 1
elsif (number % divider != 0) 
  puts "Невірно. Спробуйте ще раз"
  counter += 1 
end
end