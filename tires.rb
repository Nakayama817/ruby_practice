#完了（10/10）

s = (gets.chomp).chars

if s[s.size - 3] == "i"
    if s[s.size - 2] == "s"
        if s[s.size - 1] == "t"
            puts "ist"
        end
    end
elsif s[s.size - 2] == "e"
    if s[s.size - 1] == "r"
        puts "er"
    end
end