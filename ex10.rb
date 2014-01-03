#10. Write a program that prints the next 20 leap years.


def is_leap_year(year)
  if year % 400 == 0
    @leap_year = true
    @counter += 1
  elsif year % 100 == 0
    @leap_year = false 
  elsif year % 4 == 0
    @leap_year = true
    @counter += 1
  else
    @leap_year = false
  end
end


leap_years          =   Array.new
@counter            ||= 0
potential_leap_year =   Time.now.year

while @counter <= 20
  is_leap_year(potential_leap_year = potential_leap_year += 1)
  if @leap_year == true
    leap_years << potential_leap_year
  end
end

puts leap_years











