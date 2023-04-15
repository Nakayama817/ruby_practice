a1 = (gets.chomp).split
a2 = (gets.chomp).split

#a1, a2 to int
a1 = a1.map(&:to_i)

a2 = a2.map(&:to_i)


k = Array.new
#bigger 1−a1(1) or 1−a1(2) impted to k
1-a1[1] > 1-a1[2] ? k.push(1-a1[1]) : k.push(1-a1[2])
#smaller a1(0)-a1(1) or a1(0) - a1(2) impted to k
a1[0]-a1[1] < a1[0]-a1[2] ? k.push(a1[0]-a1[1]) : k.push(a1[0]-a1[2])

#bigger 1−a1(1) or a1(2) - a1(0) imputed to k
1-a1[1] > a1[2]-a1[0] ? k.push(1-a1[1]) : k.push(a1[2]-a1[0])
#smaller a1(0)-a1(1) or a1(2)-1 imputed to k
a1[0]-a1[1] < a1[2]-1 ? k.push(a1[0]-a1[1]) : k.push(a1[2]-1)

# x is inputed to a3 in integer in k[0] to k[1]
a3 = Array.new
for i in k[0]..k[1]
    a3.push(i)
end

# x is inputed to a4 in integer in k[2] to k[3]
a4 = Array.new
for i in k[2]..k[3]
    a4.push(i)

end

#create coodinate line is a1(0) row is a1(0)
c = Array.new(a1[0]) {Array.new(a1[0],".")}

#for (a3(i)+a1(1), a3(i)+a1(2)) is imput "*" in c
a3.each do |i|
    x = i+a1[1]
    y = i+a1[2]
    c[x - 1][y - 1] = "*"
end
#for (a4(i)+a1(1), a1(2)-a4(i)) is imput "*" in c
a4.each do |i|
    x = i+a1[1]
    y = a1[2]-i
    c[x - 1][y - 1] = "*"
end

#print c
for i in a2[0]..a2[1]
    for j in a2[2]..a2[3]
        print c[i - 1][j - 1]
        
    end
    puts
    
end