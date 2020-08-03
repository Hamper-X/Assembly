#Programa 03:
.text
.globl main

main:
	# y = x - z + 300000
	# x -> $s1 
	# z -> $s2
	# y -> $s3
	 
	addi $t1, $zero, 0x3
	sll $t1, $t1, 24
	
	addi $t0,$zero,0x1001 #alocando o local de onde esta x1 em t0
	sll $t0,$t0,16	#arredando esses valores 
	lw $s1,0($t0)	#pegando do endereço de memoria para x 
	
	lw $s2,4($t0)	#pegando do endereço de memoria +4 carregando endereço de memoria em $s2 para z
	
	sub $t2,$s1,$s2 #$t2=x-y
	
	add $s2,$t2,$t1 #y=(x-z)+300000
	
	sw $s0,12($s3)	
	
	
.data
	x: .word 100000
	z: .word 200000
	y: .word 0 #valor que sera sobrescrito apos execução
