# move $t1,$t0 => move o valor de $t0 para $t1
# li $t0, qualquer valor de 32 => carrega o registrador $t0 com um numero de 32 bits(aceitando negativo)
# la $t1, vary => carrega um registrador com endereço simbolico
.text 
.globl main
main:
	la $t0,va12	# carrega um endereço de 32-bit em $t0
	lw $t1,0($t0)	# carrega primeiro valor, 2
	lw $t2,val3	# carrega o segundo valor(outra forma de ser feito)
	sll $0,$0,0 	#tempo de delay
	add $t3,$t1,$t2	#soma dos dois valores
	sw $t3, val4	#escreve na memoria na posicao  val4
.data
	val1: .word 1
	va12: .word 2
	val3: .word 3
	val4: .word 4

	