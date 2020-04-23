=begin
Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
How many such routes are there through a 20×20 grid?
=end

start = Time.now

#Take the 2x2 grid, to reach the end we have 4 steps to take. R,R,D,D. now this is just a simple permutation
#4!/2!2!. For a MxN grid the formula would be (M+N)!/M!N!

# Ruby dosen't have a Factoral function
# So we use the gamma function Math.gamma returns (n-1)! so we must call n+1
# or just simply n.downto(1).inject(:*) would work
def lattice_path_permutation!(n,m)
    Math.gamma(n+m+1)/(Math.gamma(m+1)*Math.gamma(n+1))        
end
stop = Time.now
print lattice_path_permutation!(5,5),"\n"
print "The program took ", stop-start," ms to complete"
