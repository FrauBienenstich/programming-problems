# n = 8

# all_numbers = (1..n).to_a

# sum = 0
# all_numbers.each do |a|

#   if not a % 5 == 0 
#     all_numbers.delete(a)
#   end

#   if not a % 3 == 0
#     all_numbers.delete(a)
#   end
# end
# puts all_numbers
# ------> warum ging das nicht???

n = 8

all_numbers = (1..n)

sum = 0
all_numbers.each do |a|

  if a % 5 == 0 || a % 3 == 0
    sum += a 
  end
end
puts sum