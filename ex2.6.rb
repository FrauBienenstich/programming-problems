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
  len = sanitized_string.length
  mid = (len * 0.5).floor

  for i in 0..mid
    a = sanitized_string[i]
    b = sanitized_string[len - 1 - i]

    return false if a != b
  end
  true

end

def palindrome_2?(word)
  sanitized_string = sanitize(word)
  is_palindrome = true
  while sanitized_string.length > 2 && is_palindrome

    is_palindrome = sanitized_string[0] == sanitized_string[-1]

    sanitized_string = sanitized_string[1..-2]
  end
  is_palindrome
end

string_to_check = "Amore Roma"

if palindrome_2?(string_to_check)
  puts "TRUE"
else
  puts "false"
end

Benchmark.bmbm  do |x|
  x.report("palindrome_0")   { (1..100000).each { |i| palindrome_0?("Amore Roma") } }
  x.report("palindrome_1")  { (1..100000).each { |i| palindrome_1?("Amore Roma") } }
  x.report("palindrome_2")   { (1..100000).each { |i| palindrome_2?("Amore Roma") } }
end

