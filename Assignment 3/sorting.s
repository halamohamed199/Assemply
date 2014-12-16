.data 
string: .asciiz ""

.text

.globl main

main:

li $v0,8
la $a0,string
syscall
la $s4,string
la $s5,string

sort:

	lb $s0,($s4)
	addi $s5,$s5,1
	lb $s1,($s5)
	beq $s0,0,Exit
	beq $s1,0,Loop
	bgt $s0,$s1,swap
	j sort

Loop:
	addi $s4,$s4,1
	addi $s5,$s4,0
	j sort



swap:
	sb $s0,($s5)
	sb $s1,($s4)
	j sort

Exit:
	li $v0,4
	la $a0,string
	syscall

li $v0,10
syscall
                               