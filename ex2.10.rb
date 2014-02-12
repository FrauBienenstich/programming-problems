# Write a function that combines two lists by alternatingly taking elements, e. g. [a,b,c], [1,2,3] → [a,1,b,2,c,3].

a = ["a","b","c"]
b = [1,2,3]

def alternate(list1, list2)
  list1.zip(list2).flatten
end

puts alternate(a, b)