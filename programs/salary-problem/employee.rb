class Employee
  attr_reader :name

  def initialize(name)
    self.name = name
  end

  def name=(name)
    if name == ""
      raise "Name can't be empty"
    end
    @name = name
  end

  def print_name
    puts "Name: #{name}"
  end

end

class SalariedEmployee < Employee
  attr_reader :salary

  def initialize(name,salary)
   super(name)
   self.salary = salary
  end

  def salary=(salary)
    if salary < 0
      raise "Salary can't be < 0"
    end
    @salary = salary
  end

  def print_payment_for_two_weeks
    print_name
    pay_for_period = (salary / 365) * 14
    puts format("Pay this period :$%.2f","#{pay_for_period}")
  end
end

class HourlyPaidEmployee < Employee
  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "Hours wage can't be < 0"
    end
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "Hours wage can't be < 0"
    end
    @hours_per_week = hours_per_week
  end

  def initialize(name,hourly_wage,hours_per_week)
   super(name)
   self.hourly_wage = hourly_wage
   self.hours_per_week = hours_per_week
  end

  def print_payment_for_two_weeks
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    puts format("Pay this period :$%.2f","#{pay_for_period}")
  end
end
