#2.5. Write a function that computes the running total of a list.
list = [1, 2, 3, 4 ]

def running_total(array)

  #array.inject(:+) same same?

   value = array.inject { |acc, n| acc + n}
   puts value


end

running_total(list)