.text
li s0, LED_MATRIX_0_BASE
li s1, LED_MATRIX_0_HEIGHT
li s2, LED_MATRIX_0_WIDTH
li s3, 0x0a3799
li s4, 0xffc72c
addi s5,s0,LED_MATRIX_0_SIZE

start: mv a0,s0
    on: sw s4,0(a0)
        addi a0,a0,4
        bne a0,s5,on
    
    mv a0,s0

off: sw s3,0(a0)
    addi a0,a0,4
    bne a0,s5,off
    
    j start