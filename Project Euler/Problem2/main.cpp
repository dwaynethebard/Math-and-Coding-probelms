#include <stdio.h>      /* printf */
int Fib(int N);
int FibEven(int N);
int main(int argc, char *argv[])
{

    int sum;
    sum =FibEven(4000000);
    printf("the sum is %d \n",sum);  
    return 0;
}

int Fib (int N) // The simple loop adding only the even numbers
{
    int sum = 0;
    int n1=0,n2=1,n3=2;
    while(n3<N)
    {    
        n3=n1+n2;
        if(n3>4000000)
        {
            break;
        }
        n1=n2;    
        n2=n3;   
        if(n3%2==0)
        {
            sum=sum+n3;
        }

    }    
    return sum;
}

//there is a series for Even Fibonacci Numbers
// Fn= 4F_{n-1}+F_{n-2)
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
