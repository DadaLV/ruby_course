def sqrt(argument)
  if argument >= 0
    Math.sqrt(argument).round(4)
  else
   "The root of a negative number does not exist in rational numbers" 
  end 
end
sqrt(4)
sqrt(5)
sqrt(-3)