=begin
Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
How many such routes are there through a 20×20 grid?
=end

start = Time.now

#Take the 2x2 grid, to reach the end we have 4 steps to take. R,R,D,D. now this is just a simple permutation
#4!/2!2!. For a MxN grid the formula would be (M+N)!/M!N!
# for a NxN grid this can be reduced to (2*N)*(2*N-1)...(N+1)/N!


def lattice_path_permutation!(n)
    (2*n).downto(n+1).inject(:*)/(n).downto(1).inject(:*) 
end
stop = Time.now
print lattice_path_permutation!(20),"\n"
print "The program took ", stop-start," ms to complete"
