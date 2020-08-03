.text
.globl main
main:
	#s0 = y
	addi $t0,$t0,0x1001
	sll $t0,$t0,16
	lw $t1,0($t0)
	addi $t2,$0,2
	
	#testando 
	slt $s1,$t1,$zero 
	beq $s1,$0,Maior
	#se chegar aqui e pq e menor
	MenorIgual:
		mult $t1,$t1
		mflo $s5
		mult $s5,$t1
		mflo $s5
		addi $s0,$s5,1
		j fim
		
	Maior:
		beq $t1,$zero,MenorIgual
		#x elevado a 4
		mult $t1,$t1
		mflo $s4
		mult $s4,$t1
		mflo $s4
		mult $s4,$t1
		mflo $s4
		addi $s0,$s4,-1
fim: 
	sw $s0,0($t0)
.data
	x: .word 5