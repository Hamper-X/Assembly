.text
.globl main
main:
	#TEMP => s0
	#FLAG => s1
	
	addi $t0, $0, 0x1001
	sll $t0,$t0,16
	lw $s0, 0($t0) #alocando o valor de TEMP em T0
	addi $t1, $0, 30 
	addi $t2, $0, 50
	
	slt $t3,$s0,$t1 #if(t0<t1)=1 else=0
	bne $t3,$zero,saida
	#else: ele e maior ou igual a 30
	slt $t3,$t2,$s0 #if(t1<s0)=1 else=0
	bne $t3,$zero,saida
	#else: ele e menor ou igual a 50
	addi $s1,$0,1
	sw $s1, 4($t0)
	j fim
saida:
	addi $s1,$0,0
	sw $s1, 4($t0)
fim:
	#fim do programa
.data 
	x: .word 36