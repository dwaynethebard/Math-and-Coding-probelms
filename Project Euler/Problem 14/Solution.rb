def collatz_sequence!(n)
    sum=0
    if n==1
        return 1
    end
    if n%2==0
        sum+=collatz_sequence!(n/2)
    else
        sum+=collatz_sequence!(3*n+1)
    end
    sum + 1  
        
end
start = Time.now
longest_sequence = 0
sequence_value = 0
current_sequence = 0
for value in 1..1000000 do
    current_sequence = collatz_sequence!(value)
    if current_sequence > longest_sequence
        longest_sequence = current_sequence
        sequence_value = value
    end
end
stop = Time.now
print "The longest sequence starts at ",sequence_value," and is ",longest_sequence," long"
print "The program took ", stop-start," ms to complete"
