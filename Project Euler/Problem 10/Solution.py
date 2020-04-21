def sum_list(a):
     sum = 0
     for i in a:
          sum=sum+i  
     return sum
# We can use the Sieve Of Eratosthenes generate primes smaller than 1 to N in O(n log(log(n) ) time with O(n) space
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

primes = sieve_of_eratosthenes(2000000)
print(sum_list(primes))
