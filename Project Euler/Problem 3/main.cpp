#include <stdio.h>      /* printf */
#include <math.h>       /* sqrt */
#include <vector>

int main(void)
{
    
    std::vector<int> PrimeFactors;
    
    long long Limit = sqrt(600851475143);
    long long num = 600851475143;
    
    if(600851475143 % 2 == 0) // check the first even prime
    {
        PrimeFactors.push_back(2);
    }
    int i=3; // can loop though all number to see if it can dividie our number, we can skip every two to save time

    for(i; i< Limit; i=i+2 )
    {
        
        if (num % i == 0 )
        {
            PrimeFactors.push_back(i);
            while (num % i ==0) // remove all factors of this number
            {
                num=num/i;
            }
            
        }
        
    }
    for (i = 0; i < PrimeFactors.size(); i++)
    {
        printf("%d \n" ,PrimeFactors[i]);
    }

    return 0;
}
