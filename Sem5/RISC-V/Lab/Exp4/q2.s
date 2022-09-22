#Write an assembly code to add the power of 2 from 1 to 100
li x4, 1
li x5, 1
li x6, 64

power:
    slli x5,x5,1
    add x4,x4,x5
    blt x5,x6,power