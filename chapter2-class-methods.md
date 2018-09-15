## Class and Methods

method definition :-

```
def method_name(arg1,arg2)
  print arg1 + arg2 }             - Method body
end

method_name - Method name
arg1 and arg2 - Arguments

```

Sample methods

```

def accelerate
  puts "Increaseing the speed"
end

def horn
  puts "Beep..Bepp..!"
end

def use_headlight(headlight)
  puts "Enable #{headlight} light"
end

accelerate
horn
use_headlight("low-beam")
```

## Conventions

The method name can be one or more lowercase words, separated by underscores. (This is just like the convention for variable names.) Numbers are legal, but rarely used.
It’s also legal for a method name to end in a question mark (?) or exclamation point (!). These endings have no special meaning to Ruby. But by convention, methods that return a Boolean (true/false) value are given names that end in ?, and methods that have potentially surprising side effects are given names that end in !.

**Note :-** The -I is a command-line flag, a string that you add on to a command to change how it operates. In this case, -I alters the set of directories that Ruby searches for files to load. And the dot (.) represents the current directory. (irb -I .(working directory))

```

 ✝  jensoncs/ruby-important-notes/programs   master±  irb -I .
irb(main):001:0> require "vehicle_methods"
=> true
irb(main):002:0> sound_horn
Beep..Bepp..!
=> nil
irb(main):003:0> accelerate
Increasing the speed
=> nil
irb(main):004:0> use_headlight
Enble low-beam light
=> nil
irb(main):005:0> use_headlight("high-)
irb(main):005:0> use_headlight("high-beam")
Enble high-beam light
=> nil
irb(main):006:0>
```
Rubyists generally prefer implicit return values over explicit return values. With a short method, there’s no reason to write this:

```
def area(length, width)
  return length * width
end
```
The return keyword causes the method to exit, without running the lines of code that follow it. This is useful in situations where running that code would be pointless, or even harmful.

## Designing a class

The benefit of using objects is that they keep a set of data, and the methods that operate on that data, in one place.
A class is a blueprint for making objects
Things an object knows about itself are called: instance variables
Things an object does are called: instance methods

Class :-
* state - Instance variables - known
* does - nstance methods - behaviour

## What’s the difference between a class and an object?

A class is a blueprint for an object. The class tells Ruby how to make an object of that particular type. Objects have instance variables and instance methods, but those variables and methods are designed as part of the class.

```e.g: If classes are cookie cutters, objects are the cookies they make.```

The style for class names is called “camel case,” because the capital letters look like the humps on a camel.

```
class AddressBook
end

class Dog
end
```
An object’s instance variables are kept around as long as the object is.

An object can store data in instance variables: variables that are tied to a particular object instance. Data written to an object’s instance variables stays with that object, getting removed from memory only when the object is removed.

An instance variable looks just like a regular variable, and follows all the same naming conventions. The only difference in syntax is that its name begins with an “at” symbol (@).

```
@my_variable - instance variable
my_variable - local variable
```
## Encapsulation

To help avoid exposing an object’s data to malicious (or clumsy) users, most object-oriented languages encourage the concept of encapsulation: preventing other parts of the program from directly accessing or changing an object’s instance variables.

To encourage encapsulation and protect your instances from invalid data, Ruby doesn’t allow you to access or change instance variables from outside the class. Instead, you can create accessor methods, which will write values to the instance variables and read them back out again for you. Once you’re accessing your data through accessor methods, it’s easy to extend those methods to validate your data—to reject any bad values that get passed in.

Ruby has two kinds of accessor methods: attribute writers and attribute readers. Ruby has two kinds of accessor methods: attribute writers and attribute readers.

### SYMBOLS

A Ruby symbol is a series of characters, like a string. Unlike a string, though, a symbol’s value can’t be changed later

That makes symbols perfect for use inside Ruby programs, to refer to anything whose name doesn’t (usually) change, like a method.

```
irb(main):005:0> Object.new.methods
=> [:instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :instance_variable_get, :public_methods, :instance_variables, :method, :public_method, :define_singleton_method, :singleton_method, :public_send, :extend, :pp, :to_enum, :enum_for, :<=>, :===, :=~, :!~, :eql?, :respond_to?, :freeze, :inspect, :object_id, :send, :to_s, :display, :nil?, :hash, :class, :clone, :singleton_class, :itself, :dup, :taint, :yield_self, :untaint, :tainted?, :untrusted?, :untrust, :trust, :frozen?, :methods, :singleton_methods, :protected_methods, :private_methods, :!, :equal?, :instance_eval, :instance_exec, :==, :!=, :__id__, :__send__]
```

Using “raise” in our attribute writer methods

If the new value is invalid and the raise statement is executed, the program will halt. The statement that assigns to the instance variable will never be reached.
