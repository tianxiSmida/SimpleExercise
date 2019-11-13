
## Build Assembly code on MAC

### 1. Create file with below code

file can be named with xxx.asm or xxx.s.
Import! Filename Extension **don't** conflict with .c, .swift, .m ...etc.

```assembly
.globl  _main           # set start point of program

message:
.asciz "Hello World\n"

_main:                      # program starts here
push    %ebp            # save base-pointer register
sub     $8, %esp        # reserve bytes from stack to call _printf

lea     message, %eax   # get memory address of message string...
mov     %eax, (%esp)    # ...and store it into reserved stack area

call    _printf         # display a "Hello World" on console

add     $8, %esp        # free up reserved stack memory
pop     %ebp            # restore base-pointer register
xor     %eax, %eax      # set return code to zero
ret                     # exit program

```

### 2. Compile assembly program (Assembler)

```shell
as xxx.asm -o xxx.o -arch i386
```

### 3. Link and compiled object code

```shell
ld xxx.o -e _main -lc -macosx_version_min 10.14 -o playFromAssembly -arch i386 -no_pie
```

### 4. Run it
```shell
./playFromAssembly
```

## Reference
https://www.linkedin.com/pulse/assembler-mac-yes-we-can-gaetano-causio/

https://developer.apple.com/library/archive/documentation/DeveloperTools/Reference/Assembler/000-Introduction/introduction.html