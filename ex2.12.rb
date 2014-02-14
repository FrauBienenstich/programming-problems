#Write a function that computes the list of the first 100 Fibonacci numbers.

# def fibonacci(n)
#   return n if n <= 1

#   fibonacci(n-1) + fibonacci(n-2)
# end

FIBONACCI_CACHE = {}

def memoized_fibonacci(n)
  FIBONACCI_CACHE[n] ||= (n <= 1 ? n : memoized_fibonacci(n-1) + memoized_fibonacci(n-2)) # fibonacci wird für jede zahl gespeichert
end

def print_list
  n = 0..99
  n.each do |fib|
    puts "This is the number: #{fib}"
    puts memoized_fibonacci(fib)
  end  
end

print_list
