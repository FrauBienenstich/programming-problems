# Write a guessing game where the user has to geuss a secret number. 
# After every guess the program tells the user whether his number was 
# too large or too small. At the end the number of tries needed should 
# be printed. I counts only as one try if the user inputs the same number consecutively.



# @secret_number = 34
# puts "Please guess my secret number."
# @guess = gets.chomp.to_i

# def hint
# 	if @guess < @secret_number
# 		puts "Too small! Please try again:"
# 		@guess = gets.chomp.to_i
# 	elsif @guess > @secret_number
# 		puts "Too big! Please try again: "
# 		@guess = gets.chomp.to_i
# 	end
# end

# while @guess != @secret_number
# 	hint
# end

# puts "Correct!" if @guess == @secret_number


class GuessMe

  puts "Please guess my number."

  def initialize(secret_number)
    @secret_number = secret_number
    user_input 
  end

  def user_input
    @guess = gets.chomp.to_i
  end

  def hint
    if @guess < @secret_number
      puts "Too small! Please try again:"
     user_input
    elsif @guess > @secret_number
      puts "Too big! Please try again: "
      user_input
    end
  end

  def start
    while @guess != @secret_number
      hint
    end
    puts "Correct!" if @guess == @secret_number
  end 
end

guessing_game = GuessMe.new(34)
guessing_game.start