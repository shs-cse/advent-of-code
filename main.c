#include <stdio.h>
#include "main.h"

int main()
{
    FILE *fp = fopen("temp/puzzle.txt", "r");
    char buff[100];

    while (fgets(buff, sizeof buff, fp))
        process(buff);
    solution();

    fclose(fp);
    return 0;
}