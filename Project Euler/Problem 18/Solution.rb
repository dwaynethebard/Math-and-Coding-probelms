=begin
Find the maximum total from top to bottom of the triangle:
First I put the triangle in a .txt file to allow easy change of the triangle
=end

start = Time.now
# Open file and store each line in a 2D array
text=File.open('input.txt').read
triangle_data = []
text.each_line do |line|
    triangle_data.push(line.split(" ").map(&:to_i))
end


# A simple recursion, find the max path of each subtree
# Give the root of the tree, ahe tree containing the data
def max_path_sum(row,column,triangle)
    begin
         return triangle[row][column]+[max_path_sum(row+1,column,triangle),max_path_sum(row+1,column+1,triangle)].max    
    rescue
        return triangle[row][column]
    end
end
print "The max path sum is : ", max_path_sum(0,0,triangle_data),"\n"
stop = Time.now
print "The program took ", stop-start," ms to complete"
