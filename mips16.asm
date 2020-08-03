.text
.globl main
main:

	addi $t1,$0,100 #contador=100
	addi $t4,$0,100 #contador=100
	addi $t0,$0,0x1001
	sll $t0,$t0,16
	do1:	 
		addi $s1,$s1,5	#s1 = 2*$s1
		addi $s2,$s1,3	#s2 = s2+$s1
		sw $s2,0($t0)	
		addi $t0,$t0,4 	#t0=t0+4
		addi $t1,$t1,-1
		bne $t1,$0,do1	#if(s1!=100){ goto: do}
	
	addi $t0,$0,0x1001
	sll $t0,$t0,16
	addi $t3,$0,0x1001
	sll $t3,$t3,16
	addi $t1,$0,100 #contador=100
	for1:	
		addi $t4,$0,100 #contador=100	
		for2:
			lw $s0, 0($t0) 
			addi $t0,$t0,4
			lw $s1, 0($t0)
			addi $t0,$t0,4
			slt $t2,$s1,$s0
			bne $t2,$zero,swap
			volta:
			addi $t3,$0,4
			addi $t4,$t4,-1
			bne $t4,$zero,for2
		addi $t1,$t1,-1
		bne $t1,$zero,for1
		
	swap:
		sw $s1, 0($t0)
		sw $s0, -4($t0)
		j volta
	
	
			
		
		
