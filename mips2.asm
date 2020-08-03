#Programa 02:
.text
.globl main

main:
	# y = 127x - 65z + 1
	# x -> $s1 
	# z -> $s2
	# y -> $s3
	
	addi $t0,$zero,0
	
	addi $t0,$zero,0x1001 #alocando o local de onde esta x1 em t0
	sll $t0,$t0,16	#arredando esses valores 
	lw $s1,0($t0)	#pegando do endereço de memoria para x
	
	lw $s2,4($t0)	#pegando do endereço de memoria +4 carregando endereço de memoria em $s2 para z
	
	sll $t1,$s1,8 #x=x*128
	sub $s1,$t0,$s0 #128x-x = 127x
	
	sll $t2,$s2,6 #x=x*64
	add $s2,$t2,$s2 #65 * $s1= 64*t1 + $s1
	
	sub $s3,$s1, $s2 # y = 127x - 65z
	addi $t0,$zero,1
	add $s3,$s3,$t0 #y=y+1
	
	sw $s0,12($s3)
.data
	x: .word 5 #0x10010000
	z: .word 7 #0x10010004
	y: .word 0 #0x10010008
