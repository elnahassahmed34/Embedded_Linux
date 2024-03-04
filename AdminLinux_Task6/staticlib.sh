#!/bin/bash

gcc -c -Wall addition.c subtraction.c multiplication.c division.c modulus.c
ar rcs liboperation.a addition.o subtraction.o multiplication.o division.o modulus.o
rm *.o

