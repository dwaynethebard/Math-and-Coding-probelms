def difference(n)
    puts ((n*(n+1))/2)**2 - ( ( n*(n+1)*(2*n+1) )/6 )
end
def sim(n)
    puts n**4/4 + n**3/6 - 3*n**2/12 - n/6
end
m=10
difference(m)
sim(m)
