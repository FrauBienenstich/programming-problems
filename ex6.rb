# Write a program that asks the user for a number n and gives 
# him the possibility to choose between computing the sum and computing the product of 1,…,n.

puts "Please choose a number"
input = gets.chomp
@n = input.to_i
puts "You chose number #{@n}"

puts "Do you want to calculate the sum of all the numbers from 0 to #{@n}? 
Or do you want the product of all the numbers from 0 to #{@n}?"

def sum
	turn = 0
	sum = 0
	(1..@n).each do |number| # @n war string befor ich es zu i machte! deswegen error!
		turn += 1 #Zähler, der immer um 1 größer wird. wie wäre es, wenn keine range sondern array mit gemischten Zahlen?
		sum = sum + turn # recursion?
	end
	return sum
end

# def product
# 	(1..@n).inject { |result, element| result * element }
# 	# (1..@n).inject(:*)
# end


def factorial(n)
	puts "calling factorial with #{n}"
	if n == 0 #wenn bei 0 angekommen wird 1 gesetzt
		puts 'n == 0'
		1
	else
		puts n
		return_value = n * factorial(n - 1)
		return_value
	end
end

	answer = gets.chomp
	if answer == "sum"
		puts "The sum is #{sum}"
	else 
		#puts "The product is #{product}"
		puts "The product is #{factorial(@n)}"
	end