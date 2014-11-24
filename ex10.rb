#10. Write a program that prints the next 20 leap years.

require 'date'

def is_leap_year(year)
  if year % 400 == 0
    @counter += 1
    @leap_year = true
  elsif year % 100 == 0
    @leap_year = false 
  elsif year % 4 == 0
    @counter += 1
    @leap_year = true
  else
    @leap_year = false
  end
end

def print_next_years(amount)
  potential_leap_year = Date.today.strftime("%Y").to_i
  leap_years = []
  @counter ||= 0
  while @counter < amount
    is_leap_year(potential_leap_year)
 
    if @leap_year == true
      leap_years << potential_leap_year
    end
    potential_leap_year = potential_leap_year += 1
  end
  puts leap_years
end

print_next_years(20)
