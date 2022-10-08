#未完了(10/7)

i = gets.chomp
j = i.split
k = j[0].to_i - 1
l = j[1].to_i - 1
m = gets.chomp
moji = m.chars
counter = 0
hinan = 0

if (l < k) or (1 > k + 1)
    puts "正しい値を入力してください"
    exit
else
    moji.each do |a|
        unless (/[a-z]+/.match(a)) 
            puts "正しい文字列を使用してください"
            exit
        end
        counter = counter + 1
    end
    
    if (counter >= 100000) or ((l + 1) > (counter + 1))
        puts "正しい値を入力してください"
        exit
    end
    
    counter = 0
    
    if ((l - k) % 2) == 1
        while (((l - k) - 1) / 2) >= counter
            hinan = moji[(k + counter)] 
            moji[(k + counter)] = moji[(l - counter)] 
            moji[(l - counter)] = hinan
            counter = counter + 1
        end
    else
        while ((l - k) / 2) >= counter
            hinan = moji[(k + counter)] 
            moji[(k + counter)] = moji[(l - counter)] 
            moji[(l - counter)] = hinan
            counter = counter + 1
        end
    end
    
    hyouji = moji.join
    puts hyouji.to_s
end

