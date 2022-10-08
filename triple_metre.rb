#未完了（10/8）
$s = (gets.chomp).chars
$cs = ["o","x","x","o","x","x","o","x","x","o","x","x"]

unless $s[10] == nil
    puts "No"
    exit
end

def hantei(h)
    count = h
    $s.each do |a|
        if a = $cs[count]
            count = count + 1
        else 
            puts "No"
            exit
        end
    end
    puts "Yes"
end

if $s[0] == "o"
    hantei(1)
elsif $s[1] == "x"
    hantei(1)
else
    hantei(2)
end