# class Site
#   HOME_URL = 'https://www.home.com'
#   attr_reader :current_url  

#   def initialize
#     @current_url = HOME_URL
#   end

#   def go_to(relevant_path)
#     relevant_path = "#{HOME_URL}/#{relevant_path}"
#     relevant_path != @current_url ? @current_url = relevant_path : nil     
#   end
  
#   def to_s
#     "*----------*\nhome: #{HOME_URL}\ncurrent url: #{current_url}\n*----------*"
#   end
# end

# a1 = Site.new
# a1.go_to("url1")
# puts a1
# p a1.go_to("url1")

# a1 = Site.new
# puts a1.current_url
# a1.go_to("url1")
# puts a1.current_url
# a1.go_to("url2")
# puts a1.current_url
# class Site
#   HOME_URL = 'https://www.home.com'
#   attr_reader :current_url  

#   def initialize
#     @current_url = HOME_URL
#   end

#   def go_to(relevant_path)
#     relevant_path = "#{HOME_URL}/#{relevant_path}"
#     relevant_path != @current_url ? @current_url = relevant_path : nil     
#   end
  
#   def to_s
#     "*----------*\n home: #{HOME_URL}\n current url: #{current_url}\n*----------*"
#   end
# end

class Site
  HOME_URL = 'https://www.home.com'
  attr_reader :current_url
  @@history = []
 

  def initialize
    @current_url = HOME_URL
    @@history.push(@current_url)
  end

  def go_to(relevant_path)
    relevant_path = "#{HOME_URL}/#{relevant_path}"
    
    if relevant_path != @current_url
      @current_url = relevant_path
      @@history.push(@current_url)
    else
      nil  
    end        
  end

  def <(other)
    @current_url.index < other.current_url.index
  end

  def >(other)
  if other.is_a? Site
   @current_url.index > other.current_url.index
    else
    false
    end
  end

  def ==(other)
    @current_url.index == other.current_url.index
  end
  
  def !=(other)
    @current_url.index != other.current_url.index
  end
    
  
  def to_s
    "*----------*\n home: #{HOME_URL}\n current url: #{current_url}\n history: #{@@history}\n*----------*"
    # puts @current_url.index
  end
end

a1 = Site.new
a1.go_to('1')
a1.go_to('2')
a2 = Site.new
a2.go_to('1')
puts(a1.history)

# class Site
#   HOME_URL = 'https://www.home.com'
#   attr_reader :current_url
#   @@history = []
 

#   def initialize
    
#     @current_url = HOME_URL
#     @@history.push(@current_url)
#   end

#   def go_to(relevant_path)
    
#     relevant_path = "#{HOME_URL}/#{relevant_path}"
#     if (relevant_path == @current_url)
#       nil
      
#     else
#     @current_url = relevant_path
    
#     end
#     if relevant_path == @current_url
#             @current_url
#         else
#             @current_url = "#{HOME_URL}/#{home}"
#         end
        
#         @@history.push(@current_url)
    
#   end

#   def <(other)
#     @current_url.index < other.current_url.index
#   end

#   def >(other)
#   if other.is_a? Site
#     @current_url.index > other.current_url.index
#     else
#     false
#     end
#   end

#   def ==(other)
#     @current_url.index == other.current_url.index
#   end
    
  
#   def to_s
#     "*----------*\n home: #{HOME_URL}\n current url: #{current_url}\n history: #{@history}\n*----------*"
#   end
# end

