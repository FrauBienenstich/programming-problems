#Write three functions that compute the sum of the numbers in a list: using a for-loop, a while-loop and recursion.

#list = [4, 6, 5]

# #for-loop
# def sum_1(list)
#   sum = 0
#   for i in list
#     sum += i
#   end
#   sum
# end

# puts sum_1(list)

# # while loop
# def sum_2(list)
#   count = 0
#   sum = 0
#   while count < list.count do
#     sum = sum + list[count-1]
#     count = count + 1
#   end
#   sum
# end

# puts sum_2(list)

# # recursion

# def sum_3(list)
#   return 0 unless list.count > 0
#   return list.shift + sum_3(list)
# end

# puts sum_3(list)


# #inject
# list = [4, 6, 5]
# def sum_4(list)
#   return list.inject(0) {|acc, n| acc + n }
# end

# puts sum_4(list)


# Nov 2014: Write three functions that compute the sum of the numbers in a list: using a for-loop, a while-loop and recursion.


list = [1, 2, 3, 4]

def sum_1(list)
  sum = 0
  list.each do |numb|
    sum += numb
  end
  sum
end

def sum_2(list)
  list.inject {|memo, obj| memo + obj }
end

def sum_3(list)
  index = 0
  sum = list[0]
  while index < list.length - 1
    sum = sum + list[index + 1]
    index += 1
  end
  puts sum
end

def sum_4(list)
  return 0 unless list.count > 0 # wenn bei null angekommen kommt 0 raus
  list.shift + sum_4(list) #erstes element plus sum von minimiertem array
end

# #shift returns the first element of self and removes it (shifting all other elements down by one). Returns nil if the array is empty.

















