.data   
.text 
.globl main

main:

li $v0,6
syscall

li.s $f7,0.0
add.s $f8,$f0,$f7 

li.s $f9,1.0
sub.s $f10,$f9,$f8

li $v0,6
syscall

li.s $f6,0.0
add.s $f11,$f0,$f7 


div.s $f4,$f8,$f11

add.s $f5,$f10,$f4

li.s $f3,1.0
div.s $f12,$f3,$f5

li $v0,2
syscall


li $v0,10
 syscall
.end main