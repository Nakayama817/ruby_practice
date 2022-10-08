#完了(10/8)

i = gets
i = i.to_i
if i < 55
    if i < 42
        if i > 0
            if i < 10
                puts ("AGC00" + i.to_s)
            else
                puts ("AGC0" + i.to_s)
            end
        else
            exit
        end
    else
        puts ("AGC0" + (i + 1).to_s)
    end
else
    exit
end
