#完了

h = 10.0
i = gets.chomp
j = i.split
k = j[0].to_f
l = j[1].to_f
m = l - k

if ((k and l) < 0) or ((k and l) > 1000)
    p "不正な値です"
    exit
else
    if m <= 0
        p 0
    else 
        n = (m/h).ceil
        p n
    end
end