# Initializing Instances

### A division problem

1. Check how the division of intergers happening in ruby

```
class Employee
  attr_reader :name, :salary

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
    puts "Pay this period : $#{pay_for_period}"
  end
end

employee1 = Employee.new

employee1.name = "sam"
employee1.salary = 50000
employee1.print_payment_for_two_weeks


------------------------------
** Output **

Name: sam
Pay this period : $1904
------------------------------
```
this output is wrong. When I calculated using calculator i got 1917.xx. How I can fix this?

```
class Employee
  attr_reader :name, :salary

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
    puts "Pay this period : $#{pay_for_period}"
  end
end

employee1 = Employee.new

employee1.name = "sam"
employee1.salary = 50000.0
employee1.print_payment_for_two_weeks

---------------------

** Output **

Name: sam
Pay this period : $1917.8082191780823
---------------------
```

**Note**
```
Integer/Integer - Integer

Interger/Float  - Float

Float/Float - Float

Float/Integer - Float

```
We’re showing a little too much precision! Currency is generally expected to be shown with just two decimal places.

### Format

```
irb(main):008:0> result = format("round to two decimel : %0.2f", 3.22222332)
=> "round to two decimel : 3.22"
```
### Format sequence

1. %s - String

```
irb(main):005:0> format("My name is %s","sam")
=> "My name is sam"
irb(main):006:0>
```

2. %i - Integer

```
irb(main):006:0> format("My name is %s and my age is %i","sam",25)
=> "My name is sam and my age is 25"
irb(main):007:0>
```

3. %f - Floating point

```
irb(main):007:0> format("value of pi is %f",3.14159265358)
=> "value of pi is 3.141593"
irb(main):008:0>
```

### Format sequence with width

```
puts format("%12s | %2s ", "Product", "cost in cents")
puts "-"*30

puts format("%12s | %2i ", "Stamp",50)
puts format("%12s | %2i ", "clips",03)
puts format("%12s | %2i ", "taps",99)
puts format("%12s | %2.2f ", "something",22.3)

#%12.s - 12 space width string
#%2i - 2 space width integer
##%4.3f- 4 - minimum number of width, 3 - width after decimal, f - float
```
### “nil” stands for nothing

```
irb(main):007:0> employee.print_payment_for_two_weeks
Name:
Traceback (most recent call last):
        3: from /usr/local/opt/rbenv/versions/2.5.0/bin/irb:11:in `<main>'
        2: from (irb):7
        1: from /Users/jenson/gojek/src/github.com/jensoncs/ruby-important-notes/programs/employee.rb:20:in `print_payment_for_two_weeks'
NoMethodError (undefined method `/' for nil:NilClass)
irb(main):008:0>

irb(main):013:0> p @name
nil
=> nil
irb(main):014:0> p @salary
nil
=> nil
irb(main):015:0>

```
To avoid this kind of situation ruby provides

### The “initialize” method

Ruby provides a mechanism to help with this situation: the initialize method. The initialize method is your chance to step in and make the object safe to use, before anyone else attempts to call methods on it.

When you call MyClass.new, Ruby allocates some memory to hold a new MyClass object, then calls the initialize instance method on that new object.

The new method is needed to actually create the object; initialize just sets up the new object’s instance variables.


## Call other methods on the same instance with “self”

```
class MyClass
  def first_method
    puts "Current instance within first_method: #{self}"
    self.second_method
  end

  def second_method
    puts "Current instance within second_method: #{self}"
  end
end

ob1 = MyClass.new
ob1.first_method

** Output **
-----------------------------------------------------------------
irb(main):038:0> class MyClass
irb(main):039:1>   def first_method
irb(main):040:2>     puts "Current instance within first_method: #{self}"
irb(main):041:2>     self.second_method
irb(main):042:2>   end
irb(main):043:1>
irb(main):044:1>   def second_method
irb(main):045:2>     puts "Current instance within second_method: #{self}"
irb(main):046:2>   end
irb(main):047:1> end
=> :second_method
irb(main):048:0>
irb(main):049:0> ob1 = MyClass.new
=> #<MyClass:0x00007fb7048df820>
irb(main):050:0> ob1.first_method
Current instance within first_method: #<MyClass:0x00007fb7048df820>
Current instance within second_method: #<MyClass:0x00007fb7048df820>
--------------------------------------------------------------------
```

