#Write functions that add, subtract, and multiply two numbers in their digit-list representation (and return a new digit list). If you’re ambitious you can implement Karatsuba multiplication. Try different bases. What is the best base if you care about speed?


def sanitize(n1, n2)
  s1 = n1.to_s
  s2 = n2.to_s

  num1, fraction1 = s1.split('.')
  num2, fraction2 = s2.split('.')

  numpad = [num1.length, num2.length].max
  fractionpad = [fraction1.length, fraction2.length].max

  num1 = num1.rjust(numpad, '0')
  num2 = num2.rjust(numpad, '0')

  fraction1 = fraction1.ljust(fractionpad, '0')
  fraction2 = fraction2.ljust(fractionpad, '0')

  ["#{num1}.#{fraction1}", "#{num2}.#{fraction2}"]
end

#returns array
def make_digits(n)
  n.to_s.split('').map { |ding| ding.to_i } #to_a
end

def calc(operator, n1, n2)
  n1, n2 = sanitize(n1, n2)
  result = []

  memory = 0
  (n1.length - 1).downto(0).each do |i|
    if n1[i] == '.'
      result.unshift('.')
      next
    end
    digit1 = n1[i].to_i
    digit2 = n2[i].to_i

    val = digit1 + digit2 + memory

    if val > 9
      memory, val = make_digits(val)
    else
      memory = 0
    end
    puts "#{digit1} + #{digit2} = #{val} (#{memory}"
    result.unshift(val)
  end
  result.join
end

def sum(n1, n2)
  n1 + n2
end


puts calc(:sum, 1.5, 14.6234)

