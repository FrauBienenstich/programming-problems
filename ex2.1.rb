#Write a function that returns the largest element in a list.

list = [ 342434, 23, 1, 5, 9, 4, 23, 5 ]

list.max

def max(list)
  max_number = nil
  list.each do |n|
    if max_number == nil or n > max_number
      max_number = n 
    end
  end
  return max_number
end

puts "The max number is #{max(list)}"
  # go through each number and compare with all other numbers
  # groessere zahl in variable speichern
  # mit nächster zahl vergleichen
  #

