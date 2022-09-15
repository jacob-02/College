li x5, 0x1234
li x6,0x5678
li sp, 0x10012000
addi sp,sp, -8
sw x5, 0(sp)
sw x6, 4(sp)
add x6,x2,x5
add x5,x4,x3
lw x6,4(sp)
lw x5,0(sp)