# def star_wrap
#   puts '***' + yield + '***'
#  end
 
#  star_wrap { return 'word' }

# def star_wrap
#   puts '***' + yield + '***'
#  end
 
#  star_wrap { 'word' }

# def m1(proc)
#   proc.call
#  end
 
#  pr = lambda { |n| n }
 
#  variable = m1(pr)
#  puts(variable)

# def m1(proc)
#   proc.call 7, 8
#  end
 
#  pr = proc { |n| n }
 
#  variable = m1(pr)
# def m1(proc)
#   proc.call 1, 2
#  end
 
#  pr = proc { |n = 0| 3 * n }
 
#  variable = m1(pr)
#  puts(variable)

def m1(proc)
  proc.call
 end
pr = proc { |n| n }

variable = m1(pr)

puts variable.nil?