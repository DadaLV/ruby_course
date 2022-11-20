# def zero_fuel(distance, mpg, fuel_left)
# distance = 50
# mpg = 25
# fuel_left = 2
 
# unless (mpg * fuel_left > distance)
# puts  false
# end
# end

# variable = 0
# if variable then puts 'Success' else puts 'Fail' end

# a = true
# b = false
# if a && b
#  puts 'False'
# elsif a || b
#  puts 'True'
# else
#  puts 'neither true nor false'
# end

# a = 1
# b = 2
# if a > b
#  a = a * b
#  puts a
# elsif a < b
#  a = a * a + b
#  puts a
# else
#  a = a - b
#  puts a
# end

# letter = 'A'
# puts true if letter == 'a' || letter == 'e' || letter == 'i'  || letter == 'o' || letter == 'u'

# letter = 'A'
# puts true if letter == 'a' || letter == 'e' || letter == 'i'  || letter == 'o' || letter == 'u' 
# end
# d=0

# puts "a" unless d != 0 


  
# def rgb(str)
#  str = 2
#  if (str == 2 or str == 0 or str == 1)
#   puts("jhfjhf")
#  else
#   puts("Я не знаю такого кольору") end 
 
 
# end
# def rgb(str)
#  str = 'red'
#   if (str == 'red')
#    puts 'red'
#   elsif (str == 'blue')
#    puts ('blue')
#   elsif (str == 'green')
#    puts('green')
#   else
#    puts "Я не знаю такого кольору"
#   end
# end

# def simple_multiplication(number)
#   number = 1
#   number * (8 + (number & 1))
# end

puts Math.sqrt(3*12)

def saved_sqrt(a, b)
  ((a * b) > 0) ? c = Math.sqrt(a*b) : c = 0
  c end

  puts 'Введіть номер місяця'

case today
when "пн", "вівт", "сер", "чт", "пт"
puts "#{today} - будній день"
else "суб", "нед"
puts "#{today} - вихідний день"
end