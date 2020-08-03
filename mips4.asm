#Programa 04:
.text
.globl main

# x -> $s1
# x* -> $s2
# x** -> $s3
# x*** -> $s4
# k = x*** -> $s4

main:
	addi $t0,$zero,0x1001 #alocando o local de onde esta x1 em t0
	sll $t0,$t0,16	#arredando esses valores 
	ori $t0,$t0,0x000C
	#lw $s1,0($t0)	#pegando do endereço de memoria
	addi $s1, $t0,-4
	addi $s2, $s1,-4
	addi $s3, $s2,-4
	
	lw $s4,0($s3)
	
	#lw $s2,4($s1)#ponteiro 1
	
	#lw $s3,4($s2)#ponteiro 2
	
	#lw $s4,4($s3)#ponteiro 3
	
	#sll $s4,$s4,2
.data
	#colocando um valor inicial qualquer na primeira varivel
	x: .word 4 #0x10010000
