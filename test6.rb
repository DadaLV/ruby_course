# def my_method(a=1, b=2, c)
#   a+b+c
# end
# puts(my_method(3))

def some(a)
  return a*2 if a == 5
  return a*3 if a == 10
  0
end
puts(some(20))

divider = 21
counter = 0
number = "Чудово"
while counter < 5
print "Введіть число, яке буде ділитися на #{divider} : "
number = gets.strip.to_i
if number == divider
  puts "Число не повинно дорівнювати #{divider}"
elsif (number % divider != 0) 
  puts "Невірно. Спробуйте ще раз"  
elsif (number % divider == 0)
  puts "Чудово" 
else counter == 5
  
end
counter += 1
puts "Кількість спроб завершилася :("
end



divider = 21
counter = 0
loop do
print("Введіть число, яке буде ділитися на #{divider} : ")
number = gets.strip.to_i
if number == divider
  puts "Число не повинно дорівнювати #{divider}"
else (number % divider != 0) 
  puts "Невірно. Спробуйте ще раз"
    
else (number % divider == 0)
puts "Чудово"  
end
counter += 1
puts "Кількість спроб завершилася :("
end