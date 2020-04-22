#include <stdio.h>      /* printf */
#include <math.h>       /* floor */
int sum(int N, int a, int b)
{
    int threeItems = floor(  (N-1) / a );
    int fiveItems = floor((N-1) / b);
    int LCMItems = floor( (N-1) / (a*b));

    int sum = a*((threeItems+1)*threeItems)/2 + b*((fiveItems+1)*fiveItems)/2 - (a*b)*((LCMItems+1)*LCMItems)/2;
    printf("The sum of these multiples is %d" , sum );
    return 0;

}
