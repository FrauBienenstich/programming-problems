# my_name = "Alice"

# puts "What's your name?"
# puts "My name is #{my_name}"

# known_names = ["Alice", "Bob"]

# if my_name == "Alice" # known_names.any?
#   puts "Hello #{my_name}"
# elsif my_name == "Bob"
#   puts "Hello #{my_name}"
# else
#   puts "Hi stranger!"
# end

# or
puts "Tell me ur name"
your_name = gets.chomp

if your_name == "Alice" or your_name == "Bob"
  puts "Hello #{your_name}"
else
  puts "I don't know you, #{your_name}"
end