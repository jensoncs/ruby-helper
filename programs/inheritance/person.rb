class Person
  def greeting
    puts "Hello!!!!!!!!!"
  end
end


class Friend < Person
  def greeting
    puts "Welcome!!!!!"
  end
end

person = Person.new
puts person.greeting

friend = Friend.new
friend.greeting
puts "************* Trying super***************"
class BestFriend < Person
  def greeting
    super
    puts "Welcome...................."
  end
end

best_friend = BestFriend.new
best_friend.greeting
