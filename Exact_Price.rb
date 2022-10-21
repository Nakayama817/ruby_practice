#完了（10/21）
x = (gets.chomp).to_i
if x%100 == 0 and x > 0
    puts "Yes"
else
    puts "No"
end