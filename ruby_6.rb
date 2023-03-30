#complite 3/30

x = (gets.chomp).split
f = 0
t = 1

x.map!(&:to_i)


x.each do |y|
    t = (t * y)
    if y == 1
        f += 1
    end
end

if f == 0
    puts t
elsif f == 1
    puts (t + 1)
else
    puts (t + 2)
end
