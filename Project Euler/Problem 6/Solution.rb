=begin
Find the diffenece between The sum of the squares of the first n natural numbers
and The square of the sum of the first n natural numbers

the sum of the first n numbers can be written as
(n*(n+1))/2
so just square it afterwards

The sum of the squares closed form is n*(n+1)*(2*n+1) )/6

difference keeps the equation as they are, where sim simplifies the expression

=end

def natural_sum(n) 
    ((n*(n+1))/2)
end
def square_sum(n)
    ( n*(n+1)*(2*n+1) )/6 
end
def cubic_sum(n)
    (n**2 * (n+1)**2)/4
end

def difference(n)
    puts natural_sum(n)**2 -  square_sum(n)
end
def sim(n)
    puts n**4/4 + n**3/6 - 3*n**2/12 - n/6
end
m=10
difference(m)
sim(m)
