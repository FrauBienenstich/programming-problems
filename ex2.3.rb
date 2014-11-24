# Write a function that checks whether an element occurs in a list.
# list = ["Hallo", "Hund", "Katze", "Maus"]

# def search(list, word)
#   list.each do |l|
#     if l == word
#       return true
#     end
#   end
#   return false
# end

# puts search(list, "Hund")

# or
# Write a function that checks whether an element occurs in a list.

# animals = ["Hund", "Katze", "Maus"]
# fav_animal = "Hund"

# def find(list, word)
#   hits = 0
#   list.each do |anim|
#     hits += 1 if anim == word
#   end
#   puts "YA!" if hits > 0
# end

# find(animals, fav_animal)

# or

animals = ["Hund", "Katze", "Maus"]
fav_animal = "Hund"

def find(list, word)
  puts "YAY" if list.include?(word)
end

find(animals, fav_animal)