# Check dependencies using ldd command
ldd calculator_dynamic
ldd calculator_static

# Check file types using file command
file calculator_dynamic
file calculator_static

# Check object information using objdump command
objdump -h calculator_dynamic
objdump -h calculator_static

