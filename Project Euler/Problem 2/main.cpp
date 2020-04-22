#include <stdio.h>      /* printf */
#include <math.h>       /* sqrt */
int Fib(int N);
int FibEven(int N);
long BinetFibNum(int N);
long BinetFibNumSum(int N);

int main(int argc, char *argv[])
{

    int Binetsum,simsum,evensum;
    Binetsum =BinetFibNumSum(4000000);
    evensum =FibEven(4000000);
    simsum =Fib(4000000);
    printf("the sum for simple is %d \n",simsum);
    printf("the sum for Binet is %d \n",Binetsum); 
    printf("the sum for even sum is %d \n",evensum);   
    return 0;
}

int Fib (int N) // The simple loop adding only the even numbers
{
    int sum = 0;
    int n1=0,n2=1,n=2;
    while(n<N)
    {    
        n=n1+n2;
        if(n>4000000)
        {
            break;
        }
        n1=n2;    
        n2=n;   
        if(n%2==0)
        {
            sum=sum+n;
        }

    }    
    return sum;
}


int FibEven(int N) // there is a series for Even Fibonacci Numbers
{
    long long int sum,n2=0,n1=2,n=0;
    sum = n2+n1;
    while(n<=N)
    {
        n=4*n1+n2;
        n2=n1;
        n1=n;
        if(n>4000000)
        {break;}
        sum=sum+n;

    }
    return sum;
}

//Binet's Fibonacci Number Formula
// Binet's formula is a special case of the U_n Binet form with m=1, corresponding to the nth Fibonacci number, 
long BinetFibNum(int N)
{
    return round((pow((1+sqrt(5)),N) + pow((1-sqrt(5)),-N) ) / (pow(2,N)*sqrt(5)));
}

long BinetFibNumSum(int N)
{
    long sum=0;
    long BinetFib=0;
    int i=3;
    while (BinetFib<N)
    {
        BinetFib=BinetFibNum(i);
        if(BinetFib>4000000)
        {break;}
        i=i+3;
        sum+=BinetFib;
    }
    return sum;
}
