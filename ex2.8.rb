#Write a function on_all that applies a function to every element of a list. Use it to print the first twenty perfect squares.

square = Proc.new { |elem| puts elem * elem }


def on_all(list, func)
  list.each do |elem|
    func.call(elem)
  end
end

list = 1..20


puts on_all(list, square)

#other, similar ways?