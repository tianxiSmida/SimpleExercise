
#

### Pre-Process

Create file with Pre-process
```
gcc -E CTest.c -o outputA.i
```

### Compiler

Compile Pre-process file
```
gcc -S outputA.i -o outputB.s
```

### Assembler

Convert Assembly code to machine code
```
gcc -c outputB.s -o outputC.o
```

### Linker

Link library
```
gcc -o result outputC.o
```

Reference:[https://medium.com/@meghamohan/everything-you-want-to-know-about-gcc-fa5805452f96](https://medium.com/@meghamohan/everything-you-want-to-know-about-gcc-fa5805452f96)
