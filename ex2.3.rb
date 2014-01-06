# Write a function that checks whether an element occurs in a list.
list = ["Hallo", "Hund", "Katze", "Maus"]

def search(list, word)
  list.each do |l|
    if l == word
      return true
    end
  end
  return false
end

puts search(list, "Hund")

