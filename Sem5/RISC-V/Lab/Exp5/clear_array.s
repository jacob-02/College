.data
    ary: .word 1,2,3,4
.text

li x11,4
li x5,0
la x10,ary

back: slli x6,x5,2
      add x7,x6,x10
      sw x0, 0(x7)
      addi x5,x5,1
      blt x5,x11,back