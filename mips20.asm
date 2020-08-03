.text 
.globl main
main:
	do:
		addi $t1,$0,100 #contador=100
		addi $t0,$0,0x1001
		sll $t0,$t0,16
		addi $t2,$0,0
		addi $s4,$0,0
		do1:	 
			add $s4,$t2,$t2	#
			addi $s4,$s4,1 	#s4 = s4 + 1
			sw $s4,0($t0)	
			addi $t0,$t0,4 	#t0=t0+4
			addi $t2,$t2,1
			bne $t2,$t1,do1	#if(s1!=100){ goto: do}
		addi $t0,$0,0x1001
		sll $t0,$t0,16
		addi $t2,$0,0
		addi $t1,$0,100 #contador=100
		do2:	 
			lw $s4,0($t0) #carregar em $s4 a primeira posicao
			add $t2,$t2,$s4	#soma = soma + A[i]
			addi $t0,$t0,4 	#t0=t0+4
			addi $t1,$t1,-1
			bne $t1,$zero,do2	#if(s1!=100){ goto: do}
			
		