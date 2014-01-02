# Write a program that prints all prime numbers. (Note: if your 
# programming language does not support arbitrary size numbers,
# printing all primes up to the largest number you can represent is fine too.)


require 'prime'
Prime.each do |prime|
	p prime
end
