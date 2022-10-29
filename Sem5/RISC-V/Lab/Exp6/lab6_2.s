li x5, 4
li x18, 1
li x9, 1

loop: blt x5,x18,exit
      mul x9,x9,x18
      addi x18,x18,1
      j loop

exit:nop