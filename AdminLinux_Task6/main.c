// main.c
#include <stdio.h>
#include "calculator.h"

int main() {
    int a = 10, b = 5;
    
    printf("Addition: %d\n", add(a, b));
    printf("Subtraction: %d\n", subtract(a, b));
    printf("Multiplication: %d\n", multiply(a, b));
    
    // Handle division and modulus by zero
    int result = divide(a, b);
    if (result != -1) {
        printf("Division: %d\n", result);
    } else {
        printf("Division by zero!\n");
    }
    
    result = modulus(a, b);
    if (result != -1) {
        printf("Modulus: %d\n", result);
    } else {
        printf("Modulus by zero!\n");
    }

    return 0;
}

