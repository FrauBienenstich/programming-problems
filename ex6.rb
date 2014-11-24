# Write a program that asks the user for a number n and gives 
# him the possibility to choose between computing the sum and computing the product of 1,…,n.

puts "Please choose a number"
@number = gets.chomp.to_i
puts "You chose number #{@number}"

puts "Do you want to calculate the sum of all the numbers from 0 to #{@number}? 
Or do you want the product of all the numbers from 0 to #{@number}?"

# def sum
# 	sum = 0
# 	turn = 0
# 	(1..@number).each do |number|
# 		turn += 1
# 		sum = sum + turn
# 	end
# 	return sum
# end

# def sum
# 	(1..@number).inject { |manipulated, object| manipulated + object }
# end

def sum
	(1..@number).inject(:+)
end


# def product
# 	(1..@number).inject { |result, element| result * element }
# end

# def product
# 	(1..@number).inject(:*)
# end


def factorial(n)
	puts "calling factorial with #{n}"
	if n == 0 #wenn bei 0 angekommen wird 1 gesetzt, Abbruchbedingung
		puts 'n == 0'
		1
	else
		n * factorial(n - 1)
	end
end

answer = gets.chomp
if answer == "sum"
	puts "The sum is #{sum}"
else 
	#puts "The product is #{product}"
	puts "The product is #{factorial(@number)}"
end