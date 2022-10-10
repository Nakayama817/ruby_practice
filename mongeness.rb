#完了（10/10）

hw = (gets.chomp).split
h = hw[0].to_i
w = hw[1].to_i
arr = []

h.times do |hc|
    arr[hc] = (gets.chomp).split
end

(h - 1).times do |c|
    (h - (c + 1)).times do |d|
        (w - 1).times do |e|
            (w - (e + 1)).times do |f|
                if (arr[c][e].to_i + arr[(c + (d + 1))][(e + (f + 1))].to_i) > (arr[c][(e + (f + 1))].to_i + arr[(c + (d + 1))][e].to_i)
                    puts "No"
                    exit
                end
            end
        end
    end
end

puts "Yes"