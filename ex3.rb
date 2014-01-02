my_name = "Alice"

puts "What's your name?"
puts "My name is #{my_name}"

known_names = ["Alice", "Bob"]

if my_name == "Alice" # known_names.any?
  puts "Hello #{my_name}"
elsif my_name == "Bob"
  puts "Hello #{my_name}"
else
  puts "Hi stranger!"
end