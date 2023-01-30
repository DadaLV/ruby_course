class Site
  HOME_URL = 'https://www.home.com'
  attr_reader :current_url
  @@path = []
 

  def initialize
    @current_url = HOME_URL
    @@path.push(@current_url)
  end

  def go_to(relevant_path)
    relevant_path = "#{HOME_URL}/#{relevant_path}"
    
    if relevant_path != @current_url
      @current_url = self.correct(relevant_path)
      
      @@path.push(self.correct(@current_url))
      
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
    "*----------*\n home: #{HOME_URL}\n current url: #{current_url}\n history: #{@@path}\n*----------*"
  end
  
 
  def correct(str)
    str.gsub(/\s+/, '%20')
  end
  
  private :correct
end