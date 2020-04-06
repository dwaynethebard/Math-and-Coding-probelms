#include <stdio.h>      /* printf */

int main(void)
{
    int List[] = {1,2,3,4,5};

    int LeftSum[] = {1,1,1,1,1};
    int RightSum[] = {1,1,1,1,1};

    int Result[] = {0,0,0,0,0};
    for(int i=1;i<5;i++)
    {   
        LeftSum[i]=LeftSum[i-1]*List[i-1];
    }

    for(int i=3;i>-1;i--)
    {   
        RightSum[i]=RightSum[i+1]*List[i+1];
        
    }

    for(int i=0;i<5;i++)
    {
        Result[i]=RightSum[i]*LeftSum[i];

    }
}
