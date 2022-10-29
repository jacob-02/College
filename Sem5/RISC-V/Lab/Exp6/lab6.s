#Write a RISC V assembly function that determines if the value in its input argument is divisible by 9. 
#If the input argument is divisible by 9, the function should return 1. Else it should return 0. Beyond the instructions needed for
#function call 

#Write a progran to find the factorial of a number with and without recursion.
#Write with and without subrouting(as inline program)

.data

str: .string "madam"    # stores the string with null at the end

.text



la x3,str            # x3= str address

li sp,-5             #Initialize sp for 5 byte location

rpt:lbu x4,0(x3)     # load x4 with charactor

beq x4,x0,retr       # check whether it is end of the string

addi x8,x8,1         #Increment the count of charactors in the string

sb x4,0(sp)          # Push the char on to stack

addi x3,x3,1         #index to the next element by incrementing address

addi sp,sp,-1        # Decrement sp

j rpt                # Push till last charactor



retr:la x3,str   

next:lbu x6,1(sp)   # Pop last char onto X6

     lbu x4,0(x3)   # Load first element to X4

     bne x4,x6,exit  # compare if not equal store 0 on X1

     addi sp,sp,1   # increment the pointer

     addi x3,x3,1   # increment the stack

     addi x8,x8,-1  # Decrement the counter

     bne x8,x0,next  # Repeat for all charactors

     addi x1,x0,1    #If reversed string matched with source then store 1

loop:j loop

 exit:addi x1,x0,0

last:j last

