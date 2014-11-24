#2.5. Write a function that computes the running total of a list.

list = [2, 2, 4, 2]

def running_total(array)
  #total = array.inject {|memo, obj| memo + obj}
  total = array.inject(:+)
  puts total
end

running_total(list)
