#include <stdio.h>

#include "../main.h"

int current_floor = 0, position = 0;

void process(char* buff) {
    int i = 0;
    for (i = 0; buff[i] && current_floor != -1; i++)
        if (buff[i] == '(')
            current_floor++;
        else if (buff[i] == ')')
            current_floor--;
    position += i;
}

void solution() {
    // output
    printf("%d\n", position);
}