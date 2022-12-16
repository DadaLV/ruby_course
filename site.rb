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
#     relevant_path == @current_url ? @current_url : nil
#    end
  
#   def to_s
#     "*----------*\nhome: #{HOME_URL}\ncurrent url: #{current_url}\n*----------*"
#   end
# end

class Site
  HOME_URL = 'https://www.home.com'
  attr_reader :current_url
  @path
  @history  

  def initialize
    @current_url = HOME_URL
    history = []
    @history = history
    
  end

  def go_to(relevant_path)
    
    relevant_path = "#{HOME_URL}/#{relevant_path}"
    relevant_path == @current_url ? nil : @current_url = relevant_path
    @history.push(@current_url)    
  end

  def <(other)
    @history < other.history
  end

  def >(other)
    @history[1] > history[0]
  end

  def ==(other)
    @history[1] == history[0]
  end

    
  
  def to_s
    "*----------*\nhome: #{HOME_URL}\ncurrent url: #{current_url}\nhistory: #{history}*----------*"
  end
end

a1 = Site.new
a1.go_to('1')
a1.go_to('2')
a2 = Site.new
a2.go_to('1')
puts(a1.history)