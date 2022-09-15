.data
    ary: .word 0x20,0x30
.text

la x11, ary
lw x12, 0(x11)
lw x13, 4(x11)
jal x1, pro
sw x14, 8(x11)
exit: j exit

pro: mul x14,x12,x13
    jr x1    #jr 