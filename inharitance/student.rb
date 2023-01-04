module Validation
  MIN_NAME_LENGTH = 1
  MAX_NAME_LENGTH = 40
  def name?(string)
    string[0] >= "A" && string[0] <+ "Z"
  end

  def length?(string)
    string.length >= MIN_NAME_LENGTH && string.length <= MAX_NAME_LENGTH
  end
end

module Color
  ITEMS = ["blue", "green", "gray", "dark"]
  def color?(variable)
    ITEMS.include?(variable)
  end
end

class Student
  include Validation, Color
  attr_reader :first_name, :last_name

  def initialize(first, last)
    if name?(first) && name?(last) && length?(first) && length?(last)
      @first_name = first
      @last_name = last
    end
  end

  def eye_color=(color)
    @eye_color = color if color?(color)
  end

  def to_s
    "#{@first_name} #{@last_name}, eye color = #{@eye_color}"
  end

  person = Student.new "Ivan", "Sobil"
  person.eye_color = "gray"
  puts person

  
end