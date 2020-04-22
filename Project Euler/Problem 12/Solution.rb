=begin
Find the number of factors in triangle numbers
Find the first number to have 500 factors 
=end


# Find the number of divisors of a number
# If a number is divisible let say 2. then is is also divisible by n/2.
# we can say time by counting both at once and updating the limit of our loop.
# all remaining divisors will be less than n/2 now, we can update the limit
# each loop as everything larger then n/2 has been checked

# note that we could just set the limit as the sqrt(num). saving us multiple divides, 
# in practice I found using sqrt it took 2.5662869 ms where my dividing took 1.9810221 ms
# 
def divisor_count(num)
    limit=num
    divisor=1
    divisor_count = 0
    while divisor<=limit
        if num%divisor==0
            divisor_count+=2
        end
        limit=num/divisor
        divisor+=1
    end
    divisor_count
end
count=1
num=0
i=1
start = Time.now
while count<=500
    num+=i
    i+=1
    count=divisor_count(num)
    
end
stop = Time.now

print "This took ", stop-start, "ms and The first number to have more than divisor than 500 is ",num, " and it has ", count, " divisor"
