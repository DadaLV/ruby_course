# Створити клас PhoneFormatException, який наслідується від StandardError.

# Визначити в цьому класі змінну екземпляра, яку ініціалізовувати в конструкторі. Інформація про помилку повинна виводитися в форматі: Phone number <тут повинно бути значення номера, який містить неправильний формат> is incorrect. You should enter phone in format +38dddddddddd.

# Створити модуль Validation з одним методом phone_valid?, який буде перевіряти, чи значення аргумента, який йому передається, знаходиться в форматі +38dddddddddd, де d - будь-яка цифра. Якщо це так, то метод phone_valid повертає значення істини, інакше - значення хибно.

# Створити клас User з двома змінними класу - name та phone.

# Змінна name ініціалізується в конструкторі та має атрибут-гетер.

# Змінна phone має атрибут-сетер, але при наданні значення цій змінній повинна відбуватися перевірка з модуля Validation. Якщо значення, що ми хочемо присвоїти цій змінній, невалідне, то генерується виключення PhoneFormatException із аргументом, що дорівнює цьому невірному значенню. Інкаше змінній phone надається це значення.

# user = User.new('Name')
# user.phone = '80678765567' - буде генерувати виключення з повідомленням Phone number 80678765567 incorrect. You should enter phone in format +38dddddddddd

class PhoneFormatException < StandardError
  def initialize(phone=false)
    @phone = phone
    puts "Phone number #{@phone} is incorrect. You should enter phone in format +38dddddddddd"
  end
end

module Validation
  def phone_valid?(phone)
    regular = /(?:\+?|\b)[0-9]{10}\b/
    phone == regular ? true : false
  end

end

class User
  attr_reader :name
  attr_writer :phone

  # def initialize
  #   @name = name
  #   @phone = phone
  # end

  include Validation

  def self.phone(phone)
    raise PhoneFormatException phone unless phone_valid?(phone)
    @phone = phone
    rescue PhoneFormatException
      puts "#{$!.message}"
  end


  
end

user = User.new('Name')
user.phone = '80678765567'

class PhoneFormatException < StandardError
  def initialize
    @number = number
    "Phone number #{@number} is incorrect. You should enter phone in format +38dddddddddd."
  end
  
end



module Validation
  def phone_valid?(phone)
    regular = /(?:\+?|\b)[0-9]{10}\b/
    phone == regular ? true : false
  end

end

class User
  attr_reader :name
  attr_writer :phone

  include Validation

  def phone= (phone)
    raise PhoneFormatException, @phone unless phone_valid?(phone)
    @phone = phone
    rescue PhoneFormatException
      puts $!.message
  end


  
end


class PhoneFormatException < StandardError
  attr_reader :incorrect_number

  def initialize(incorrect_number)
    @incorrect_number = incorrect_number
    message = "Phone number #{incorrect_number} is incorrect. You should enter phone in format +38dddddddddd"
    super(message)
  end
end

module Validation
  def self.phone_valid?(phone)
    phone =~ /\A\+38\d{10}\z/ ? true : false
  end
end

class User
  attr_reader :name
  attr_accessor :phone

  def initialize(name)
    @name = name
  end

  def phone=(phone)
    if Validation.phone_valid?(phone)
      @phone = phone
    else
      raise PhoneFormatException, phone
    end
  end
end


class PhoneFormatException < StandardError
  attr_accessor :phone_number

  def initialize(phone_number)
    @phone_number = phone_number
    message = "Phone number #{phone_number} is incorrect. You should enter phone in format +38dddddddddd"
    super(message)
  end
end

module Validation
  def self.phone_valid?(phone)
    /\A\+38\d{10}\z/.match?(phone)
  end
  
end

class User
  attr_reader :name
  attr_writer :phone

 include Validation

  def initialize(name)
    @name = name
  end

   def phone=(phone)
    raise PhoneFormatException.new(phone) unless Validation.phone_valid?(phone)
    @phone = phone
  end
end


