start = Time.now

def digit_sum(n)
    string_num=(2**n).to_s
    sum=0
    string_num.each_char { |c|
        sum+= c.to_i
    }
    sum
end
stop = Time.now
puts digit_sum(1000)
print "The program took ", stop-start," ms to complete"
