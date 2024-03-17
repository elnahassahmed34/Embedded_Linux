#!/bin/bash

gcc -c -Wall -Werror -fpic addition.c subtraction.c multiplication.c division.c modulus.c
gcc -shared -o liboperation.so addition.o subtraction.o multiplication.o division.o modulus.o
rm *.o

