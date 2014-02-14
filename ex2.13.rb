#Write a function that takes a number and returns a list of its digits.

number = 123456

def make_digits(n)
  n.to_s.split('')
end

puts make_digits(number)