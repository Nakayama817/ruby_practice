#未完了（10/9）

n = (gets.chomp).to_i
l = [[]]
count = 0

n.times do |m|
    l[m] = ((gets.chomp).split)
end

n.times do |o|
    (n - o).times do |p|
        if l[o] == l[(p + o)]
            count = count + 1
        end
    end
end

puts (n - count + n)


#模範解答　puts Array.new(gets.to_i){gets}.uniq.size
# uniqが重複削除のメソッド、sizeは量、newの後で配列を作成している