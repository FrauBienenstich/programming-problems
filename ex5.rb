# Modify the previous program such that only multiples of three or five are considered in the sum, e.g. 3, 5, 6, 9, 10, 12, 15 for n=17

# Solution 1

# n = 8

# all_numbers = (1..n)

# sum = 0
# all_numbers.each do |a|

#   if a % 5 == 0 || a % 3 == 0
#     sum += a 
#   end
# end
# puts sum


#Solution 2

n = gets.chomp.to_i

all_numbers = (1..n).to_a

all_numbers.keep_if {|a| a % 5 == 0 or a % 3 == 0 }

sum = all_numbers.inject {|a, b| a + b }

puts sum