# Write a guessing game where the user has to geuss a secret number. 
# After every guess the program tells the user whether his number was 
# too large or too small. At the end the number of tries needed should 
# be printed. I counts only as one try if the user inputs the same number consecutively.

class GuessMe

  puts "Please guess my number."

  def initialize(secret_number)
    @secret_number = secret_number
    @guesses = []
  end

  def user_input
    @guess = gets.chomp.to_i
    @guesses << @guess
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

  def unique
    guesses = @guesses.map(&:to_s)
    guess = @guess.to_s

    counts = Hash.new(0)
    guesses.each do |guess|
      counts[guess] += 1
    end

    if counts[guess] > 1
      return false
    else
      return true
    end
  end

  def start
    @count = 0
    user_input 

    while @guess != @secret_number
      @count += 1 unless !unique
      hint
    end
    puts "Correct! You needed #{@count} attempts before the right guess!" if @guess == @secret_number
  end 
end

guessing_game = GuessMe.new(34)
guessing_game.start