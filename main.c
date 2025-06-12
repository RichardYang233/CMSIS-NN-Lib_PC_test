#include <stdio.h>
#include "arm_nnfunctions.h"

#include "main.h"


int main(void)
{
    int16_t a[5] = {-1, -2, 0, 1, 2};
    arm_relu_q15(a, 5);

    for(int i=0; i<5; i++)
    {
        printf("%d", a[i]);
    }

    return 0;
}