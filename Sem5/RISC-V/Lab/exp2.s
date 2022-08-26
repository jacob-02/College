li x1, 10
li x2, 2000
add x3, x2, x1

li x4, 1
mul x3, x3, x4

add x1, x2, x3

blt x3, x2 next
li x3, 17

next: j next