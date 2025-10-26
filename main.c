#include <stdio.h>
#include "main.h"

int main()
{
    FILE *fp = fopen("temp/puzzle.txt", "r");
    char buff[100];

    while (fgets(buff, sizeof buff, fp))
        soln(buff);

    fclose(fp);
    return 0;
}