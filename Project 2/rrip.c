#include <stdio.h>

int main() {
    int data[8]; 
    int i, j, sum = 0;
    for (i = 0; i < 8; i++) {
        data[i] = i;
    }
    for (i = 0; i < 100; i++) {
        if (i % 4 != 0) {
            sum += data[0] + data[1];  
        } else {
            for (j = 0; j < 8; j++) {
                sum += data[j];
            }
        }
    }
    printf("Result: %d\n", sum);
    return 0;
}
