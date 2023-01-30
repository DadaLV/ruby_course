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
    @@history.find_index(@current_url) == @@history.find_index(other.current_url)
   end
  
  def !=(other)
    @current_url.index != other.current_url.index
  end
    
  
  def to_s
    "*----------*\n home: #{HOME_URL}\n current url: #{current_url}\n history: #{@@history}\n*----------*"
  end
end



a1 = Site.new
p a1.go_to('1')
p a1.go_to('2')
a2 = Site.new
  p a2.go_to('1')

  # class Site
  #   HOME_URL = 'https://www.home.com'
  #   @@path = []
    
  #   attr_reader :current_url
    
  #   def initialize
  #     @current_url = HOME_URL
  #   end
    
  #   def go_to(relative_path)
  #     return if relative_path == @current_url
  #     @@path << @current_url
  #     @current_url = HOME_URL + relative_path
  #   end
  # end
  
  class Example
    attr_accessor :current_url, :visit_history
  
    def <=>(other)
      index1 = visit_history.index(current_url)
      index2 = other.visit_history.index(other.current_url)
      index1 <=> index2
    end
  
    def >(other)
      (self <=> other) == 1
    end
  
    def <(other)
      (self <=> other) == -1
    end
  
    def >=(other)
      (self <=> other) >= 0
    end
  
    def <=(other)
      (self <=> other) <= 0
    end
  
    def ==(other)
      current_url == other.current_url
    end
  
    def !=(other)
      !(self == other)
    end
  end


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
        (self <=> other) == 1
      end
    
      def >(other)
        (self <=> other) != -1
      end  
    
      def ==(other)
        current_url == other.current_url
      end
    
      def !=(other)
        !(self == other)
      end
      
    
    def to_s
      "*----------*\n home: #{HOME_URL}\n current url: #{current_url}\n history: #{@@history}\n*----------*"
    end
  end
  