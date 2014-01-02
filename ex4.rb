n = 8

all_numbers = (1..n).to_a
turn = 0
sum = 0

all_numbers.each do
  turn += 1
  sum = sum + turn
end

puts sum