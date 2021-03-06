# Prompt the player to enter their name. Use their name to print a greeting.	
# Generate a random number from 1 to 100, and store it as a target number for the player to guess.
# Keep track of how many guesses the player has made. Before each guess, let them know how many guesses (out of 10) they have left.
# Prompt the player to make a guess as to what the target number is.
# If the player’s guess is less than the target number, say, “Oops. Your guess was LOW.” If the player’s guess is greater than the target number, say, “Oops. Your guess was HIGH.”
# If the player’s guess is equal to the target number, tell them, “Good job, [name]! You guessed my number in [number of guesses] guesses!”
# If the player runs out of turns without guessing correctly, say, “Sorry. You didn’t get my number. My number was [target].”
# Keep allowing the player to guess until they get it right or run out of turns.


printf "Please enter your name : "
name = gets.chomp.capitalize!
puts "Hi #{name}, Welcome !"

target = rand(100) + 1
puts "I have got a random target in my memory between 1 to 100"
puts "Can you guess it ?"

num_guess = 0
guessed_it = false
until num_guess == 10 || guessed_it

  printf "Make a guess ?"
  guess_value = gets.chomp.to_i

  if guess_value == target
    puts "Good job, #{name}"
    guessed_it = true
  elsif guess_value > target
    puts "Oops. Your guess was HIGH"
  else
    puts "Oops. Your guess was LOW"
  end

  num_guess += 1
  puts "You have left #{10 - num_guess} chances"
end

unless guessed_it
 puts "Sorry. You didn’t get my number. My number was #{target}"
end
