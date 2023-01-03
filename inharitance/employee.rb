class Employee
  attr_accessor :firstname, :lastname, :position, :rate

  def initialize(fn, ln, position)
    @firstname = fn
    @lastname = ln
    @position = position
  end

  private

  def tax(money)
    rule = { 10_000 => 0.1, 20_000 => 0.15, 'other': 0.3 }
    result = 0
    rest = money
    prev_key = 0
    rule.each_pair { |key, value|
      if key == :other
        result += rest * value
      elsif money > key
        result += (key - prev_key) * value
        rest = money - key
        prev_key = key
      else
        result += rest * value
        return result
      end
    }
    result
  end
end


class RegularEmployee < Employee
  @@working_days = 1

  def self.wd(days)
    @@working_days = days
  end

  def month_salary(days)
    before = rate * days/@@working_days
    before - tax(before)
  end
end


class HourlyEmployee < Employee
  def month_salary(hours)
    before = rate * hours
    before – tax(before)
  end
end

empl1 = RegularEmployee.new('Ivan', 'Petrenko', 'junior')
RegularEmployee.wd(28)
empl1.rate = 10_000
puts empl1.month_salary(1)

empl2 = HourlyEmployee.new('Oleksandr', 'Novak', 'manager')
empl2.rate = 10_000
puts empl2.month_salary(1)