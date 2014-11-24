# Write a function that returns the largest element in a list.

list = [ 23, 1, 5, 9, 4, 23, 342434, 5 ]

# list.max

# def max(list)
#   max_number = nil
#   list.each do |n|
#     if max_number == nil or n > max_number
#       max_number = n 
#     end
#   end
#   return max_number
# end

# puts "The max number is #{max(list)}"

def max(array)
  max_element = nil
  array.inject do |memo, object|
    if memo > object
      max_element = memo
    else
      max_element = object
    end
  end
  puts max_element
end

max(list)
