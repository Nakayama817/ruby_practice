#complite 3/30

a = Array.new
a[0] = gets.chomp
a[1] = gets.chomp

b = a.sort.join

if a[0] == b[0]
    puts "FIRST"
else
    puts "SECOND"
end