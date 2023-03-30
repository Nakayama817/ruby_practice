#complite 3/30

x = (gets.chomp).split
a = x[0].to_i
b = x[1].to_i
c = x[2].to_i
ab = (a - b)

if ab <= c
    p (ab)
else
    p (c)
end