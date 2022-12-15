# class Pizza
#   @@count = 0
  
#   def initialize(ingredients)
#     @@count += 1
#     @ingredients = ingredients
#     @number = @@count
#   end

#   def description
#     puts "Піца № #{@number} містить [#{@ingredients.join(",")}]."
#   end
# end 

# pizza1 = Pizza.new(['mushroom', 'cheese'])
# puts pizza1.instance_variable_get("@number")
# pizza2 = Pizza.new(['mushroom', 'cheese', 'cherry'])
# pizza2.description
# pizza1 = Pizza.new ["one"]
# puts pizza1.instance_variable_get("@number") 

# class Pizza
#   @@count = 0
  
#   def initialize(d, ingredients)
#     if d == 25 || d == 50
#       @@count += 1
#       @number = @@count
#       @d = d
#       @ingredients = ingredients
#     else
#       @ingredients = []
#       @number = 0
#       @d = 0
#     end
#   end

#   def description
#       "Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients.join(",")}]."
#   end
# end

# pizza1 = Pizza.new(10, ["mushroom", "cheese"])
# pizza2 = Pizza.new 25, ["mushroom", "cheese", "cherry"]
# puts pizza2.description

# class Pizza
#   @@count = 0
#   attr_accessor :failInstance
#   @@fail = 0
 
#   def initialize(d, ingredients)

#   if d == 25 || d == 50
#     @@count += 1
#     @number = @@count
#     @d = d
#     @ingredients = ingredients
#   else
#     @ingredients = []
#     @number = 0
#     @d = 0
#     @@fail += 1
#   end
#  end

#   def self.failInstance
#     @@fail 
#   end
# end

# pizza1 = Pizza.new(25, ["mushroom", "cheese", "cherry"])
# pizza2 = Pizza.new(10, ["mushroom", "cheese"])

# puts Pizza.failInstance

# class Pizza
#   @@count = 0
#   attr_writer :ingredients
#   attr_reader :d
  
#   def initialize(d, ingredients=[])
#       @@count += 1
#       @number = @@count
#       @d = d
#       @ingredients = ingredients
#   end
  
#   def ingredients=(val)
#     @ingredients = val
#   end
    
#  def d
#  @d = d
#  end

#   def description
#       "Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients.join(",")}]."
#   end
# end

# pizza1 = Pizza.new(24)
# pizza1.ingredients = ["mushroom"]
# puts  pizza1.d = 2

