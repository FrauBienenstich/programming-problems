# Write a function that concatenates two lists.

def concatenate(list1, list2)
  list1 + list2
end

ar1 = ["Hund", "katze"]
ar2 = ["Pferd", "Ziege"]

new_array = concatenate(ar1, ar2)
#or
new_array2 = ar1.zip(ar2).flatten.compact # flatten Returns a new array that is a one-dimensional flattening of self (recursively).
#compact removes nil elements from array

puts new_array.inspect
puts new_array2.inspect