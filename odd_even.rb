def parity() 
  puts("Enter integer number")
  number = gets.strip.to_i
  if (number % 2 != 0)
  puts("#{number} is odd")
  else
  puts("#{number} is even")
  end
 end
 
 parity()