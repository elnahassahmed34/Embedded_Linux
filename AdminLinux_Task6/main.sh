#!/bin/bash

gcc -o calculator_static main.c -L. -loperation -static
gcc -o calculator_dynamic main.c -L. -loperation

