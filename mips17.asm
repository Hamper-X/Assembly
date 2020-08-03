.text
.globl main
main:
	#s0 = y
	addi $t0,$t0,0x1001
	sll $t0,$t0,16
	lw $t1,0($t0)
	addi $t2,$0,2
	
	#testando para ver se e par
	div $t1,$t2
	mfhi $t3
	beq $t3,$0,par
	#se chegar aqui e pq e impar
		mult $t1,$t1
		mflo $s5
		mult $s5,$t1
		mflo $s5
		mult $s5,$t1
		mflo $s5
		mult $s5,$t1
		mflo $s5
		
		mult $t1,$t1
		mflo $s4 
		mult $s4,$t1
		mflo $s4
		
		sub $s5,$s5,$s4
		addi $s0,$s5,1
		j fim
		
	par:
		#x elevado a 4
		mult $t1,$t1
		mflo $s4
		mult $s4,$t1
		mflo $s4
		mult $s4,$t1
		mflo $s4
		
		#x elevado a 3
		mult $t1,$t1
		mflo $s3
		mult $s3,$t1
		mflo $s3
		
		#x elevado a 2
		mult $t1,$t1
		mflo $s2
		add $s2,$s2,$s2
		add $s0,$s4,$s3
		sub $s0,$s0,$s2
fim: 
	sw $s0,0($t0)
.data
	x: .word 3