#2.4. Write a function that returns the elements on odd positions in a list.

 list = ["Susanne", "Ruby", "Rails", "Berlin", "Hund", "Katze"]

# def odd_position(array)
#   odd_ones = []
#   array.each do |a|
#     if array.index(a) % 2 == 0
#       odd_ones << a
#     else 
#     end
#   end
#   puts odd_ones
# end

# odd_position(list)


#2.4. Write a function that returns the elements on odd positions in a list.


def return_odd(list)
  odd_ones = []
  list.each_with_index do |el, index|
    unless index % 2 == 0
      odd_ones << el
    end
  end
  puts odd_ones
end

elements = [0, 1, 2, 3, 4, 5]

return_odd(list)