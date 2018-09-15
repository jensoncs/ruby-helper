class Dog

#attr_writer :name, :age
  def name=(value)
    if value == ""
      raise "Name can't be empty"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "age can't be less than 0"
    end
    @age = value
  end

  def info
    puts "My name is #{@name} and I am #{@age} years old"
  end
end

rex = Dog.new
rex.name = "rex"
rex.age = 1
rex.info

jimmy = Dog.new
jimmy.name = "jimmy"
jimmy.age = 2
jimmy.info
