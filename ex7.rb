# Write a program that prints a multiplication table for numbers up to 12.

x = (1..12)
y = (1..12)
 
print '     '
x.each do |i| print "%-3d  " % i
end
print "\n     " # zeilenumbruch?


x.each do |i| print '---- '
end
print "\n"
 
y.each do |j| 
    print "%-3d| " % j
    x.each {|i| print "%-3d  " % (i*j)}
    print "\n"
end

# ???????????????????