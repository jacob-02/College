.data
    array: .word 10,20,30,40
.text

la x1, array
lw x2, 0(x1) #D
lw x3, 4(x1) #L
lw x4, 8(x1) #M
lw x5, 12(x1) #X

li x6, 50 #Y
li x7, 60 #Z
li x8, 70 #C

add x9, x6,x4 #(Y+M)
sub x10, x3,x2 #(L-D)
add x11,x7,x8 #(Z+C)
sub x11,x11,x2 #(Z+C-D)

add x9,x9,x11 #Y+M+Z+C-D
sub x5,x9,x10 #FINAL