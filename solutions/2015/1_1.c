#include <stdio.h>
#include "../main.h"

int current_floor = 0;

void process(char *buff)
{
    for (int i = 0; buff[i]; i++)
        if (buff[i] == '(')
            current_floor++;
        else if (buff[i] == ')')
            current_floor--;
}

void solution()
{
    printf("%d\n", current_floor);
}