# move $t1,$t0 => move o valor de $t0 para $t1
# li $t0, qualquer valor de 32 => carrega o registrador $t0 com um numero de 32 bits(aceitando negativo)
# la $t1, vary => carrega um registrador com endereço simbolico
.text 
.globl main
main:
	li $v0, 5	#codigo de leitura de interio
	syscall		#solicitação de leitura
	move $v0,$s0	#salva em $s0 o valor
	
	li $v0, 5	#codigo de leitura de interio
	syscall		#solicitação de leitura
	move $v0,$s1	#salva em $s1 o valor
	
	li $v0, 5	#codigo de leitura de interio
	syscall		#solicitação de leitura
	move $v0,$s2	#salva em $s2 o valor
	
	slt $t0,$s0,$s1	#se $s0<$s1 ? $t0 = 1 : $t0 = 0
	beq $t0,$0,S0maiorS1
	#caso chegue aqui: $s0<$s1
	slt $t0,$s1,$s2 #se $s1<$s2 ? $t0 = 1 : $t0 = 0
	beq $t0,$s0,S1maiorS2
	S0menorS1menorS2:
		#s0<s1<s2
		li $v0,4
		la $a0,resp1
		syscall
		sw $s2,resp2
		li $v0,1
		la $a0,resp2
		syscall
		
		li $v0,4
		la $a0,resp3
		syscall
		
		li $v0,4
		la $a0,resp4
		syscall
		sw $s0,resp5
		li $v0,1
		la $a0,resp5
		syscall
		j fim	
	S0maiorS1:
		#s0>s1
		slt $t0,$s0,$s2 #se $s0<$s2 ? $t0 = 1 : $t0 = 0
		bne $t0,$0,S1menorS2maior
		#s0>s1 e s0>s2
		slt $t0,$s1,$s2 #se $s0<$s2 ? $t0 = 1 : $t0 = 0
		bne $t0,$0,s2menor
		#s0>s2>s1
		li $v0,4
		la $a0,resp1
		syscall
		sw $s0,resp2
		li $v0,1
		la $a0,resp2
		syscall
		
		li $v0,4
		la $a0,resp3
		syscall
		
		li $v0,4
		la $a0,resp4
		syscall
		sw $s1,resp5
		li $v0,1
		la $a0,resp5
		syscall
		j fim
		s2menor:
			#s0>s1>s2
			li $v0,4
			la $a0,resp1
			syscall
			sw $s0,resp2
			li $v0,1
			la $a0,resp2
			syscall
			
			li $v0,4
			la $a0,resp3
			syscall
			
			li $v0,4
			la $a0,resp4
			syscall
			sw $s2,resp5
			li $v0,1
			la $a0,resp5
			syscall
	S1menorS2maior:
		#S0>S1
		#S0<S2
		#s2>s0>s1
		li $v0,4
		la $a0,resp1
		syscall
		sw $s2,resp2
		li $v0,1
		la $a0,resp2
		syscall
		
		li $v0,4
		la $a0,resp3
		syscall
		
		li $v0,4
		la $a0,resp4
		syscall
		sw $s1,resp5
		li $v0,1
		la $a0,resp5
		syscall
		j fim
	S1maiorS2:
		#$s0<$s1
		#s1>s2
		slt $t0,$s0,$s2 #se $s0<$s2 ? $t0 = 1 : $t0 = 0
		beq $t0,$0,S0maiorS2
		#ss0<s2<s1
		li $v0,4
		la $a0,resp1
		syscall
		sw $s1,resp2
		li $v0,1
		la $a0,resp2
		syscall
		
		li $v0,4
		la $a0,resp3
		syscall
		
		li $v0,4
		la $a0,resp4
		syscall
		sw $s0,resp5
		li $v0,1
		la $a0,resp5
		syscall
		j fim
		S0maiorS2:
		#s1>s0>s2
		li $v0,4
		la $a0,resp1
		syscall
		sw $s1,resp2
		li $v0,1
		la $a0,resp2
		syscall
		
		li $v0,4
		la $a0,resp3
		syscall
		
		li $v0,4
		la $a0,resp4
		syscall
		sw $s2,resp5
		li $v0,1
		la $a0,resp5
		syscall
		j fim
		
	

fim:
.data
	resp1: .asciiz "o maior número = "
	resp2: .word 0
	resp3: .asciiz "\n"
	resp4: .asciiz "o menor numero = "
	resp5: .word 0