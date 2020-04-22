def find_max_sum(arr)
    incl = 0
    excl = 0
    
    arr.each do |i|
        # Current max excluding i
        new_excl = [excl,incl].max
         
        # Current max including i 
        incl = excl + i 
        excl = new_excl 
    end
      
    # return max of incl and excl 
    return [excl,incl].max 
end
  
# Driver program to test above function 
arr = [5, 5, 10,-10,-10, 100, 10, 5] 
print find_max_sum(arr) 
