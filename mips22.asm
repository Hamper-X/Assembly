.text 
.globl main
main:
	# x = s0
	# y = s1
	# k = s2
	addi $t0,$0,0x1001
	sll $t0,$t0,16
	
	lw $s0,0($t0)
	lw $s1,4($t0)
	mult $s0,$s1
	mflo $s2
	sw $s2,8($t0)
	
.data
	x: .word 3
	y: .word 4
	
	

			
		