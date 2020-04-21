#Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?

long_number = """731671765313306249192251196744265747423553491949349698352031277450632623957831801698480186947885184385861560789112949495459501737958331952853208805511
125406987471585238630507156932909632952274430435576689664895044524452316173185640309871112172238311362229893423380308135336276614282806444486645238749303589072962
9049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483
95864467063244157221553975369781797784617406495514929086256932197846862248283972241375657056057490261407972968652414535100474821663704844031998900088952434506585412
27588666881164271714799244429282308634656748139191231628245861786645835912456652947654568284891288314260769004224219022671055626321111109370544217506941658960408071
984038509624554443629812309878799272442849091888458015616609791913387549920052406368991256071760605886116467109405077541002256983155200055935729725716362695618826704
28252483600823257530420752963450"""
long_number = long_number.replace("\n", "")
# Find the first 13-digit product to start
current_largest =1 
for i in range(0,13):
     current_largest*=int(long_number[i])

current_product = current_largest
skip = 0
def mult_list(a):
     prod = 1
     for i in a:
          prod=prod*int(i)     
     return prod

import time
start_time = time.time()

# Two approaches First check the next number if 0, don't find product since it's 0. Don't find product until that 0 is gone from the 13 digits string. 
# Keep checking next digit and reset the counter if necessary



for i in range(13,1001):
     if (long_number[i-1]) == "0":
          skip=14
     if skip==0:
          current_product = mult_list(long_number[i-13:i])
     else:
          skip=skip - 1
     if current_product>current_largest:
          current_largest=current_product
print (current_largest)
print ("My program took", time.time() - start_time, "to run")
# 23514624000
# My program took 0.0010008811950683594 to run

# Just find every product and compare
current_largest =1 
for i in range(0,13):
     current_largest*=int(long_number[i])
start_time = time.time()
for i in range(13,1001):
     current_product = mult_list(long_number[i-13:i])
     if current_product>current_largest:
          current_largest=current_product
print (current_largest)
print ("My program took", time.time() - start_time, "to run")
# 23514624000
# My program took 0.0050051212310791016 to run
