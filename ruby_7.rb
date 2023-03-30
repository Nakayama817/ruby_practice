#complite 3/30

x = (gets.chomp).split("")
x.map!(&:to_i)

x.map! do |y|
    if y == 1
        y = 0
    else
        y = 1
    end
end

puts x.join