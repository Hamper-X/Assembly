#Programa 01:
.text
.globl teste
# x1 = $s1
# x2 = $s2
# x3 = $s3
# x4 = $s4
# soma = $s5

teste:
	#x mapeado em $s1
	addi $s1,$zero,1 #x=1
	#Quando o programa é carregado tem se que:
		#x1 = 0x10010000 / x2 = 0x10010004 / x3 = 0x10010008 / x4 = 0x1001000C
parte01:
	addi $t0,$zero,0
	
	addi $t0,$zero,0x1001 #alocando o local de onde esta x1 em t0
	sll $t0,$t0,16	#arredando esses valores 
	lw $s1,0($t0)	#pegando do endereço de memoria 
	
	lw $s2,4($t0)	#pegando do endereço de memoria +4 carregando endereço de memoria em $s2
	
	lw $s3,8($t0) # carregando endereço de memoria em $s3
	
	lw $s4,12($t0) # carregando endereço de memoria em $s4
parte02:
	addi $s5,$zero,-1 #soma=-1
parte03:
	add $s5,$s5,$s1 #soma = soma + $s1
	add $s5,$s5,$s2 #soma = soma + $s2
	add $s5,$s5,$s3 #soma = soma + $s3
	add $s5,$s5,$s4 #soma = soma + $s4
	sw $s0,16($s5)
.data
	x1:.word 15 #0x10010000
	x2:.word 25 #0x10010004
	x3:.word 13 #0x10010008
	x4:.word 17 #0x1001000C 
	soma:.word-1
