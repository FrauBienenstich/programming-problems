#2.4. Write a function that returns the elements on odd positions in a list.

list = ["Susanne", "Ruby", "Rails", "Berlin", "Hund", "Katze"]

def odd_position(array)
  odd_ones = []
  array.each do |a|
    if array.index(a) % 2 == 0
      odd_ones << a
      puts "I am odd!"
    else 
      puts "I am not odd!"
    end
  end
  puts odd_ones
end

odd_position(list)