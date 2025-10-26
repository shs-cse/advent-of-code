#include <stdio.h>
#include "../main.h"


void soln(char *buff)
{
    int floor = 0;
    for (int i = 0; buff[i]; i++)
        if (buff[i] == '(')
            floor++;
        else if (buff[i] == ')')
            floor--;
    printf("%d\n", floor);
}