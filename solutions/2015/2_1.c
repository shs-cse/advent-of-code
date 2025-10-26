#include <stdio.h>

#include "../main.h"

#define MAX_INT_VALUE (~(1 << 31))

int wrapping_paper = 0;

void process(char* buff) {
    int l, w, h;
    sscanf(buff, "%dx%dx%d", &l, &w, &h);
    int surf_areas[3] = {l * w, w * h, h * l};
    int total_area = 0;
    int min_area = MAX_INT_VALUE;
    for (int i = 0; i < 3; i++) {
        total_area += 2 * surf_areas[i];
        min_area = min_area < surf_areas[i] ? min_area : surf_areas[i];
    }
    wrapping_paper += total_area + min_area;
}

void solution() {
    // output
    printf("%d\n", wrapping_paper);
}