class Pizza
  @@count = 0
  
  def initialize(d, ingredients)
    if d == 25 || d == 50
      @@count += 1
      @number = @@count
      @d = d
      @ingredients = ingredients
    else
      @ingredients = []
      @number = 0
      @d = 0
    end
  end

  def description
      "Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients.join(",")}]."
  end
end 

# class Pizza
#   @@count = 0
  
#   def initialize(d, ingredients)
#     @ingredients = ingredients
    
#       @@count += 1 if d == 25 || d == 50
#       @number = @@count
#       @d = d
#   end

    
  

#   def description
#     if @d ==25 || @d == 50
#       "Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients.join(",")}]."
#     else   
#       "Піца № 0 (діагональ = 0) містить []."
#     end
#   end
# end 

# pizza1 = Pizza.new(24, ['mushroom', 'cheese'])
# pizza2 = Pizza.new(25, ['mushroom', 'cheese', 'cherry'])
# puts pizza2.description