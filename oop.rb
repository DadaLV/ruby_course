# class MyClass
#   CONST = 26

# end

# puts MyClass.CONST

# class MyClass
#   CONST = 26

# end

# MyClass::CONST = 27
# puts MyClass::CONST

# class MyClass
#   attr_accessor :field

#   def to_s
#     @field
#   end

# end

# ref = MyClass.new
# ref.field = 'Field'
# puts ref

# class MyClass
#   attr_accessor :field

#   def -(other)
#     result = MyClass.new
#     result.field = @field - other.field
#     result
#   end

#   def to_s
#     @field.to_s
#   end

# end

# ref1 = MyClass.new
# ref1.field = 15
# ref2 = MyClass.new
# ref2.field = 30
# puts ref1-ref2

class Book
  def initialize(title)
    @title = title
  end

  def to_s
    "Dook with title '#{@title}'"
  end
  
  def inspect
    "title: #{@title}"
  end
end

book = Book.new('Book 1')
p(book)