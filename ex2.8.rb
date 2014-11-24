#Write a function on_all that applies a function to every element of a list. Use it to print the first twenty perfect squares.

square = Proc.new { |elem| puts elem * elem }

#to_string = Proc.new { |elem| puts elem.to_s }


def on_all(list, func)
    #new_list = list.each { |elem| func.call(elem)}
    # or
    list.each(&func)
end

list = 1..20

on_all(list, square)
#on_all(list, to_string)


# using a lambda instead
# square = lambda {|element| element * element } # in contrast to proc checks the number of arguments

# def on_all_2(list, func)
#   list.each {|elem| puts func.call(elem)}
# end

# on_all_2(list, square)

