// modulus.c
int modulus(int a, int b) {
    if (b != 0) {
        return a % b;
    } else {
        return -1; // Indicate modulus by zero
    }
}

