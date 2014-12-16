.data   
.text 
.globl main

main:

li $v0,6
syscall

li.s $f9,0.0
add.s $f10,$f0,$f9


li $v0,6
syscall

li.s $f8,0.0
add.s $f11,$f0,$f8


mul.s $f12,$f11,$f10

li $v0,2
syscall

add.s $f9,$f10,$f11
li.s $f8,0.2
mul.s $f12,$f9,$f8


li $v0,2
syscall


li $v0,10
 syscall
.end main