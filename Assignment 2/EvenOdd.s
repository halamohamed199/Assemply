.data
evenMsg: .asciiz "even"

oddMsg: .asciiz "odd"

.text
.globl main
main:
li $s1,2

loop:
	li $v0,5
	syscall
	beq $v0,$zero,Exit

	rem $s0,$v0,$s1
	beq $s0,$zero,even
		j odd

even:
	li $v0,4
	la $a0, evenMsg
	syscall
	j loop

odd:
	li $v0,4
	la $a0, oddMsg
	syscall
	j loop

Exit:
li $v0,10
syscall

.end 

