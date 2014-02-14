#Write a function that computes the list of the first 100 Fibonacci numbers.

def fibonacci(n)
  return n if n <= 1

  fibonacci(n-1) + fibonacci(n-2)
end

def print_list
  n = 0..99
  n.each do |fib|
    puts "This is the number: #{fib}"
    puts fibonacci(fib)
  end  
end

print_list
# this takes ages! computer still stuck at 41 after 2 minutes
