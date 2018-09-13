class Dog
  def talk
    puts "Bow Bow"
  end

  def report_name(name)
    @name = name
    puts "name is #{@name}"
  end

  def name_in_upcase
    puts "name in upcase : #{@name.upcase}"
  end
end

class Cat
  def talk
    puts "Mew..."
  end

  def report_name(name)
    @name = name
    puts "name is #{@name}"
  end

  def name_in_upcase
    puts "name in upcase : #{@name.upcase}"
  end
end

dog = Dog.new

dog.talk
dog.report_name("rix")
dog.name_in_upcase

cat = Cat.new
cat.talk
cat.report_name("ma")
cat.name_in_upcase
