#Write a function that tests whether a string is a palindrome.
require "benchmark"

def sanitize(word)
  lowercase = word.downcase
  sanitized = lowercase.gsub(/\s+/, "").gsub(/\p{^Alnum}/, '')
end

def palindrome_0?(word)
  sanitized_string = sanitize(word)
  reverse_proc = Proc.new { |reverse_me| reverse_me.chars.inject([]){|r,c| r.unshift c}.join }
  reverse_proc.call(sanitized_string)
end

def palindrome_1?(word)
  sanitized_string = sanitize(word)
  len = sanitized_string.length # hallo --> 5
  mid = (len * 0.5).floor #--> 2

  for i in 0..mid # (0 .. 2)
    a = sanitized_string[i] # 1. h
    b = sanitized_string[len - 1 - i] # 1. o --> letzter Buchstabe, zählt runter
    return false if a != b
  end
  true

end

def palindrome_2?(word)
  sanitized_string = sanitize(word)
  is_palindrome = true # default
  while sanitized_string.length > 2 && is_palindrome

    is_palindrome = sanitized_string[0] == sanitized_string[-1] # returns true if first and last letter are the same

    sanitized_string = sanitized_string[1..-2] # setzt sanitized string auf neuen wert: 2 bis vorletzter buchstabe!
  end
  is_palindrome
end

string_to_check = "Amore Roma"

if palindrome_2?(string_to_check)
  puts "TRUE"
else
  puts "false"
end

def palindrome_3?(string)
  sanitized = sanitize(string)
  new_array = sanitized.split("")
  if new_array == new_array.reverse
    true
  else
    false
  end
end


Benchmark.bmbm  do |x|
  x.report("palindrome_0")   { (1..100000).each { |i| palindrome_0?("Amore Roma") } }
  x.report("palindrome_1")  { (1..100000).each { |i| palindrome_1?("Amore Roma") } }
  x.report("palindrome_2")   { (1..100000).each { |i| palindrome_2?("Amore Roma") } }
x.report("palindrome_3")   { (1..100000).each { |i| palindrome_3?("Amore Roma") } }
end
