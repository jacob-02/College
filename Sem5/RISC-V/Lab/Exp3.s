.data
    array: .word 10,20,30,40,50,60
.text

la x1, array
lw x2, 0(x1)
lw x3, 4(x1)
lw x4, 8(x1)
lw x5, 12(x1)
lw x6, 16(x1)
lw x7, 20(x1)

add x8, x2,x3
sub x9,x4,x5
add x10,x6,x7
sub x10,x10,x5

sub x9,x8,x9
add x8,x9,x10
sw x8,24(x1)