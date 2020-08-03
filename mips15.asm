.text
.globl main
main:
	#$1 => valor a ser alocado
	#s3 => soma geral
	addi $s1,$0,0 
	addi $t1,$0,100 #contador=100
	addi $s3,$0,0 #soma =0
	addi $t0,$0,0x1001
	sll $t0,$t0,16
	#gerando valor de endereço de memoria
	
	do:	 
		add $s2,$s1,$s1	#s2 = 2*$s1
		addi $s2,$s2,1	#s2 = s2 + 1
		addi $s1,$s1,1 	#s1 = s1 + 1
		sw $s2,0($t0)	
		addi $t0,$t0,4 	#t0=t0+4
		add $s3,$s3,$s2 #soma = soma + soma
		bne $t1,$s1,do	#if(s1!=100){ goto: do}
	sw $s2,4($t0)
	
		
