=begin
If we use each value in an array to a pointer to an index, we can tell if the value is 
in the array if said index is less than 0. i.e 4 => input[4-1] = -input[4-1]
This will account for duplicates, but first we must move all the negatives to one side
Also if array of size N, any value larger than N will not have index
loop through array an find first non negative index, that will be the missing number
3 loops so O(n) time with one variable so O(1) space
=end
class Array
    def swap!(a,b)

        self[a], self[b] = self[b], self[a]
        self
    end
    def neg!(a)
        if self[a]>0
            self[a]=-self[a]
        end
    end
end

input = [1, 2, 0] 
nonpositive = 0
# Move all negatives to one side
input.each.with_index(0) do  |x, index|
    if x<= 0
        input.swap!(index,nonpositive)
        nonpositive=nonpositive+1
    end
end
# set negative flag
input[nonpositive..-1].each.with_index(nonpositive) do  |x, index|
    temp = x-1+nonpositive
    if temp < input.length()
        input.neg!(temp)
    end    
end
# Find missing number
input.each.with_index(0) do  |x, index|
    if x>0 
        print "The lowest positive integer that does not exist in the array is : #{index-nonpositive+1} \n"
        break
    elsif index+1==input.length()
        print "The lowest positive integer that does not exist in the array is : #{index+1-nonpositive} \n"
    end
end
