# move $t1,$t0 => move o valor de $t0 para $t1
# li $t0, qualquer valor de 32 => carrega o registrador $t0 com um numero de 32 bits(aceitando negativo)
# la $t1, vary => carrega um registrador com endereço simbolico
.text 
.globl main
main:
	#printando a chamada
	li $v0,4
	la $a0,resp
	syscall
	#solicitando a chamada
	li $v0, 5
	syscall
	
	#addi $s0,$v0,$0		#trasnferencia do valor lido para s0
	move $s0,$v0
	addi $s1,$zero,1	# primeiro valor do vetor
	li $t0, 0x10010008
	do:
		sw $s1, 0($t0)
		addi $s1,$s1,2
		addi $t0,$t0,4
		addi $s0,$s0,-1
		bne $s0,$0,do

	li $t0, 0x10010008
	move $s0,$v0
	do2:
		lw $t1, 0($t0)
		add $s1,$s1,$t1
		addi $t0,$t0,4
		addi $s0,$s0,-1
		bne $s0,$0,do2	
	addi $t0,$t0,4	
	sw $s1, 0($t0)
	#printando a chamada
	li $v0,4
	la $a0,resp2
	syscall
	li $v0,1
	la $a0,x #Pq da erro aqui?
	syscall
	
.data
	resp: .asciiz "Entre com o tamnho do vetor que sera gerado:\n"
	resp2: .asciiz "A soma dos elementos = "
	x: .word 0