# Find the 10 001 prime number
# A simple but slow way of checking if a number is prime is

def is_prime(n):
     if n<2:
          return False
     elif n==2:
          return True
     elif n%2==0:
          return False
     for i in range(3,math.floor(math.sqrt(n)),2):
          if n%i==0:
               return False
     return True
# However this is O(sqrt(n)), so finding the nth prime would be O(n sqrt(n)), but the size would be O(1)
# We can use the Sieve Of Eratosthenes generate primes smaller than 1 to N in O(n log(log(n) ) time with O(n) space
# Although we would need a bound on the nth prime for Sieve Of Eratosthenes as not compute more than necessary

import math

def sieve_of_eratosthenes(n):
     # List of integers
     prime = [True for i in range(n)]
     # first prime to check
     p = 2
     # Prime numbers found
     prime_list=[]
     # When looping from p to n we start at p*p.
     # take some prime p, then when looping though its multiples,
     # p*2 would have been check all ready when looping p=2
     # p*3 same reason, and so on. all values less than p*p have all ready been check by as they are products of p and primes smaller than p
     while p*p < n:
          if (prime[p]==True):
               # if muilitple of a prime set to false
               for i in range(p*p,n,p):
                    prime[i]=False
          p+=1
     # add all remaining true values are primes
     for i in range(2,n):
          if prime[i]:
               prime_list.append(i)
     return prime_list

# another prime checker using Sieve Of Eratosthenes
# O(n/2 log(log(n/2) ) time with O(n/2) space
def is_prime_sieve(n):
     primes=sieve_of_eratosthenes(math.floor(n/2))
     for i in primes:
          if n%i==0:
               
               return False
     return True

# As a consequence of the prime number theorem we get the asymptotic expression
# Pn ~ n Log n where Log is the natural Logarithim.
# note that n=1 refers to 1 which isn't a prime number, so offset your choice by 1
# Also as this is an estimate it could be lower than the actual prime we want an upperbound
def prime_number_theorem_estimate(n):
     return math.log1p(n)*n

# an upper bound for value of nth prime true for n>=2
# n (Log n + 2 log (log(n))
def rosser_prime_bound(n):
     return math.floor( (math.log1p(n) + 2*math.log1p(math.log1p(n))) *n)
# a more refined formula based of Rosser is
# n (Log n + log (log(n)-0.5) for n>20
def refined_rosser_bound(n):
     return math.floor( (math.log1p(n) + math.log1p(math.log1p(n)) -0.5 ) *n )


print ("Rosser upper bound")
print (refined_rosser_bound(10001))
primes=sieve_of_eratosthenes(refined_rosser_bound(10001))
print ("10001 prime number")
print(primes[10001])
# note that the prime number bound is 5,591‬ larger than the prime number, which isn't great but thats whys its called a bound
