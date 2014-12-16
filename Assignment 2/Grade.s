.data
AA: .asciiz "AA"
A: .asciiz "A"
BB: .asciiz "BB"
B: .asciiz "B"
CC: .asciiz "CC"
C: .asciiz "C"
D: .asciiz "D"
F: .asciiz "F"
E: .asciiz "Error"

.text
.globl main
main:
li $s0,0
li $s1,50
li $s2,70
li $s3,75
li $s4,80
li $s5,85
li $s6,90
li $s7,95
li $s8,101
li $v0,5
syscall

blt $v0,$s0,error
blt $v0,$s1,Fail
blt $v0,$s2,pass
blt $v0,$s3,good
blt $v0,$s4,good2
blt $v0,$s5,verygood
blt $v0,$s6,verygood2
blt $v0,$s7,excellent
blt $v0,$s8,excellent2
bge $v0,$s8,error

error:
	li $v0,4
	la $a0,E
	syscall
	j exit

Fail:
	li $v0,4
	la $a0,F
	syscall
	j exit

pass:
	li $v0,4
	la $a0,D
	syscall
	j exit

good:
	li $v0,4
	la $a0,C
	syscall
	j exit

good2:
	li $v0,4
	la $a0,CC
	syscall
	j exit

verygood:
	li $v0,4
	la $a0,B
	syscall
	j exit

verygood2:
	li $v0,4
	la $a0,BB
	syscall
	j exit

excellent:
	li $v0,4
	la $a0,A
	syscall
	j exit

excellent2:
	li $v0,4
	la $a0,AA
	syscall
	j exit

exit:
	li $v0,10
	syscall
.end