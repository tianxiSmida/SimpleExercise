
#

### Pre-Process

Create file with Pre-process
```
gcc -E file.c -o outputA.i
```

### Compiler

Compile Pre-process file
```
gcc -S outputA.i -o outputB.asm
```

### Assembler

Convert Assembly code to machine code
```
gcc -c outputB.asm -o outputC.machine
```

### Linker

Link library
```
gcc -o result outputC.machine
```

Reference:[https://medium.com/@meghamohan/everything-you-want-to-know-about-gcc-fa5805452f96](https://medium.com/@meghamohan/everything-you-want-to-know-about-gcc-fa5805452f96)
