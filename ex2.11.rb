# Write a function that merges two sorted lists into a new list.

def merge(list1, list2)
  (list1 + list2).sort
end

list1 = [3, 6, 9]
list2 = [2, 4, 8]

puts merge(list1, list2)

#Array#sort and Enum#sort use quicksort?
