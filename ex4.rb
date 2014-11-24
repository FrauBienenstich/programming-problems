# Solution 1
# puts "Gimme a number and I will give u the sum of the numbers from 1 to that numba!"

# number = gets.chomp.to_i

# def sum(n)
#   numbers = (1..n).to_a
#   sum = 0
#   turn = 0
#   numbers.each do |n|
#     turn += 1
#     sum = sum + turn
#   end 
#   puts sum
# end

# sum(number)

# Solution 2
# puts "Gimme a number and I will give u the sum of the numbers from 1 to that numba!"

# number = gets.chomp.to_i

# def sum(n)
#   numbers = (1..n).to_a
#   sum = 0
#   numbers.each do |n|
#     sum += n
#   end 
#   puts sum
# end

# sum(number)

# Solution 3

puts "Gimme a number and I will give u the sum of the numbers from 1 to that numba!"

number = gets.chomp.to_i

def sum(n)
  (1..n).inject {|initial, sum| initial + sum }
end

puts sum(number)


