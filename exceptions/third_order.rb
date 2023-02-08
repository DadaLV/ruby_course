# Використовуючи ключове слово retry написати метод third_order, який би просив користувача сказати, чому буде дорівнювати певне додатнє число, піднесене до 3 степеня (це число буде генеруватися за допомогою методу rand). Обов'язковим аргументом цього методу повинно бути число, яке задає верхню межу для числа, третій степінь якого треба буде знайти. Якщо користувач дасть правильну відповідь, то написати в консолі - Good job.
# Інкаше - дати шанс ще раз дати відповідь для іншого числа. Таких шансів давати не більше трьох.
# Якщо в результаті користувач не справиться з задачею, вивести в консоль повідомлення - Try next time.

# Можливі результати виконання методу third_order(6):

# What is result 2 * 2 * 2?
# 3
# What is result 5 * 5 * 5?
# 5
# What is result 6 * 6 * 6?
# 216
# Good job
# При виклику third_order(1) єдиним числом, яке буде генеруватися для множення, буде тільки 1.

def third_order(number)
 begin
  count = 0
  number = rand(number)
  print "What is the result #{number} * #{number} * #{number}?"
  answer = gets.chomp
  if answer == number * number * number
     puts "Good job"
  end
 rescue 
  retry if (count +=1) < 3
  end

end 

def third_order(limit)
   tries = 0
   while tries < 3
     number = rand(1..limit)
     puts "What will be the result of raising #{number} to the 3rd power?"
     answer = gets.chomp.to_i
     if answer == number ** 3
       puts "Good job!"
       break
     else
       tries += 1
       puts "Try again. You have #{3 - tries} tries left."
     end
   end
   puts "Try next time." if tries == 3
 end
 




# third_order(1)

def third_order(number)
   count = 0
   begin
     number = rand(1..number)
     puts "What is result #{number} * #{number} * #{number}?"
     answer = gets.chomp.to_i
     puts "Good job" if answer == number ** 3
       
       
     count += 1
   rescue
     retry
   end
 
   puts "Try next time" if count == 3
 end

 