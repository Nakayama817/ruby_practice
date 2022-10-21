#完了（10/21）
s = (gets.chomp).chars
x = []
(s.size).times do |a|
    s.push(s[0])
    s.shift
    x[a] = s.join
end
x = x.sort
puts x[0]
puts x[(s.size) - 1]
