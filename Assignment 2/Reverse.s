.data

  arr: .space 20 
  Reverse: .space 20 

.text

.globl main

main:

  la $s0 , arr       
  la $s6 , Reverse 
  li $s1 , 0         
  li $s2 , 5         


Loop:

  li $v0 , 5
  syscall

  sw $v0 , ($s0) 
  addi $s0 , $s0 , 4 
  addi $s1 , $s1 , 1 

  beq $s1 , $s2 , exitLoop 
  j Loop 

exitLoop:
  addi $s0 , $s0 , -4

reverse:
  lw   $s3 , ($s0) 
  sw   $s3 , ($s6) 

  addi $s0 , $s0 , -4 
  addi $s6 , $s6 , 4 
  addi $s1 , $s1 , -1 

  beq $s1 , $0 , exitReverse  
  j reverse 

exitReverse:

la $s6 , Reverse

print:
  lw $s3  , ($s6) 
  addi $a0 , $s3 , 0
  li $v0 , 1
  syscall

  addi $s6 , $s6 , 4 
  addi $s1 , $s1 , 1 
  beq $s1 , $s2 , exitprint 
  j print 

exitprint:


  li $v0 , 10
  syscall
.end
