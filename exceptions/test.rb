# begin
#   raise '1'
#   print '2'
#  rescue
#   print '3'
#  ensure
#   print '4'
#  end

# def function(a)
#   if a == 0
#     raise StandardError
#   end
#   puts 15 / a
#  end
 
#  begin
#   function(0)
#  rescue ZeroDivisionError
#   puts 'Division by zero error'
#  end
 
# begin
#   print '1'
#  rescue
#   print '2'
#  else
#   print '3'
#  ensure
#   print '4'
#  end

# def function2(a)
#   print('start')
#   if a == 1
#     raise StandardError
#   end
#   print '1'
#   if a == 2
#     raise ArgumentError
#   end
#   print '2'
#   print 'end'
#  end
 
#  begin
#   function2(1)
#  rescue StandardError
#   print '3'
#  rescue  ArgumentError
#   print '4'
#  end

# def function2(a)
#   print('start')
#   if a == 1
#     raise StandardError
#   end
#   print '1'
#   if a == 2
#     raise ArgumentError
#   end
#   print '2'
#   print 'end'
#  end
 
#  begin
#   function2(2)
#  rescue StandardError
#   print '3'
#  rescue  ArgumentError
#   print '4'
#  end
 
# def function3(a, b)
#   print(a * b)
#  end
 
#  print 'start'
#  begin
#   function3('one', 'two')
#   function3(1, 2)
#  rescue StandardError
#   print 'Incorrect argument'
#   retry
#  end
#  print 'end'

# class MyException < StandardError
#   def initialize
#     @message = 'Custom error'
#   end
#  end
 
#  begin
#   raise MyException
#  rescue MyException
#   puts $!.message
#  end
 
# def function(a)
#   if a == 0
#     raise StandardError
#   end
#   puts 15 / a
#  end
 
#  begin
#   function(0)
#  rescue ZeroDivisionError
#   puts 'Division by zero error'
#  end

def function1(a)
  puts 15 / a
 end
 
 begin
  function1(0)
 rescue StandardError
  puts 'Division by zero error'
 end