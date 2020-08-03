.text
.globl main
main:
	#x = S0 = 0x186A00
	#y = S1 = 0x13880
	#z = S2 = 0x61A80
	
	addi $s0,$zero,0x186A
	sll $s0,$s0,16
	addi $s1,$zero,0x1388
	sll $s1,$s1,16
	addi $s2,$zero,0x61A8
	sll $s2,$s2,16
	
	mult $s0,$s1
	mfhi $s3
	div $s3,$s2
	mfhi $s3