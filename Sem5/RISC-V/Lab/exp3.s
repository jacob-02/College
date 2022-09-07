.data
    array: .word 0xAACCBBDD,7,10,5,35,40
.text

la x1, array
lh x2, 3(x1)
lb x3, 1(x1)

add x4,x3,x2

#Byte and word discrimination in storage

li x4, 0x22
sb x4, 24(x1)
sw x4, 28(x1)