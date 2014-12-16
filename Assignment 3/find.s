.data
array: .space 20
.text

.globl main

main:
la $s0,array
la $t0,array
li $s4,0
li $s5,4
li $t1,-1
Loop:
	li $v0,5
	syscall
	beq $v0,$0,EnterNum #num to search
	sw $v0, ($s0) #store int in array

	addi $s4,$s4,4 #counter 
	addi $s0,$s0,4  
	j Loop


EnterNum:
	li $v0,5
	syscall
	add $s1,$v0,0  #s1 userNum to search

search:
 	addi $t1,1
	lw $s2,($t0) #s2 =array[i]
	beq $t0,$s0,Exit
	beq $s2,$s1,print
	addi $t0,$t0,4
	j search

print :
	li $v0,1
	addi $a0,$t1,0
	syscall
	j exit


Exit:
	li $v0,1
	li $a0,-1
	syscall
	j exit


exit :
li $v0,10
syscall
.end