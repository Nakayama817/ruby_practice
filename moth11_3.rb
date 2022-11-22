#完了（提出時未完）11/22
length = (gets.chomp).to_i
chars = (gets.chomp).chars
count = 0
max = 0
chars.each do |cha|
    
    if (cha == 'a')
        count += 1
    elsif max < count
        max = count
        count = 0
    else
        count = 0
    end
    
end

if chars[length - 1] == 'a'
    puts count
else
    puts max
end