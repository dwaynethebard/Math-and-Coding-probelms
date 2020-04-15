# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20? 
import math
def lcm(x,y): return x * y / math.gcd(x,y)

n = 1
for i in range(1, 20):
     n = lcm(n, i)
print(n)
