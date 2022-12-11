# class Book
#   @@title = 'Book class'
#   def initialize(title)
#     @title = title
#   end
 
#   def method
#     @@title = @title
#   end
 
#   def self.method
#     @@title
#   end
#  end
 
#  book1 = Book.new('Book1')
#  print(book1.method)
#  print(' ')
#  print(Book.method)
 
# class Book
#   @@title = 'Book class'
#   def initialize(title)
#     @title = title
#   end
 
#   def title
#     @title
#   end
#  end
 
#  book = Book.new('new book')
#  puts book.title

# class Book
#   @@title = 'Book class'
#   def initialize(title)
#     @title = title
#   end
 
#   def self.title
#     @@title
#   end
#  end
 
#  book = Book.new('new book')
#  puts Book.title

# class Example
#   def self.title
#     '1'
#   end
#   def title
#     '2'
#   end
 
#   def method
#     puts self.title
#   end
#  end
#  ex = Example.new
#  ex.method

# class Book

#   def initialize(title)
#     @title = title
#   end
 
#   def self.title
#     @title
#   end
 
#  end
 
#  book = Book.new('new book')
#  puts book.title

# class Example
#   attr_accessor :color
#   def to_s
#     "color = #{color}"
#   end
 
#  end
 
#  ex = Example.new
#  ex.color = ('red')
#  puts ex.to_s

# class Example
#   attr_reader :color
#   def to_s
#     "color = #{color}"
#   end
 
#  end
 
#  ex = Example.new
#  ex.color = 'red'
#  puts ex.to_s

# class Example
#   attr_writer :color
#   def to_s
#     "color = #{color}"
#   end
 
#  end
 
#  ex = Example.new
#  ex.color = 'red'
#  puts ex.to_s

# class Example
#   attr_writer :color
#   def to_s
#     "color = #{@color}"
#   end
 
#  end
 
#  ex = Example.new
#  ex.color = 'red'
#  puts ex.to_s

# class Example
#   attr_reader :color
 
#  end
 
#  ex = Example.new
#  puts ex.color

class Example
  attr_accessor :color
 
 end
 
 ex = Example.new
 puts ex.instance_variable_get('color')