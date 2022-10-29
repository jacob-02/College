#Write an assembly program to compute the following:
#    for(i = 1; i<10: i=i+1)
#        c[i]=a[i]+b[i]
#where array a is at starting address 0x1100 & b is at 0x1200 & c is at 0x2000

.data
ary: .word -1,55,-3,7,0
.text
      la x2,ary
      lw x5,0(x2)
nextno:addi x2,x2,4
      lw x4,0(x2)
      beq x4,x0,exit
      bgt x5,x4,next
      mv x5,x4
next:j nextno
exit:sw x5,0(x2)
loop:j loop