class Person
  def greeting(name)
    puts "Hello #{name}"
  end
end

class Friend < Person
  def greeting(name)
    super(name)
  end
end

friend = Friend.new

friend.greeting("jenson")

puts "************************************"

class BestFriend < Person
  def greeting(name)
    super
  end
end

best_friend = BestFriend.new

best_friend.greeting("hahah")
