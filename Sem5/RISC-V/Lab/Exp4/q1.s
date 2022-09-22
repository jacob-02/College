#Write assembly code initialise register x4,x5,x6,x7 and x8 with numbers not exceeding 12 bits
#and execute using addi
#Perform it on a single cycle processor and verify CPI and IPC

li x4, 0x123
li x5, 0x35
li x6, 0x44
li x7, 0x35
li x8, 0x12

addi x3,x4,4

#Write an assembly code to add the power of 2 from 1 to 100
li x4, 0
li x5, 1
li x6, 100
slli x5,x5,1