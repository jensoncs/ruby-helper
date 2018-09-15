class Employee
  attr_reader :name, :salary

  def initialize(name,salary)
    self.name = name
    self.salary = salary
  end

  def name=(name)
    if name == ""
      raise "Name can't be empty"
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "Salary can't be < 0"
    end
    @salary = salary
  end

  def print_payment_for_two_weeks
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365) * 14
    puts format("Pay this period :$%.2f","#{pay_for_period}")
  end
end

employee1 = Employee.new("sam",50000)

employee1.name = "sam"
employee1.salary = 50000.0
employee1.print_payment_for_two_weeks
