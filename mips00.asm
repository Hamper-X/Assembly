# move $t1,$t0 => move o valor de $t0 para $t1
# li $t0, qualquer valor de 32 => carrega o registrador $t0 com um numero de 32 bits(aceitando negativo)
# la $t1, vary => carrega um registrador com endereço simbolico
.text 
.globl main
main:
	sll $0,$0,0
	
	li $v0,4	# carrega a variavel de retorno com o codigo 4 == print screen
	la $a0,string 	# $a0 == endereço da string 
	syscall 	# solicita o serviço ao usuario
	
	li $v0,5	# codigo 5 ==read integer
	syscall		#solicita serviço ao usuario
		#lê a linha em caracteres asciiz, converte para interiro de 32btis
		# $vo recebe o interio
	
	li $v0,1	#codigo 1 = printar inteiro
	lw $a0, numero	#recebe em $a0 = o que esta no endereço numero
	syscall 	# solicita o serviço ao SO
		# converte o inteiro de 32 bit em caracteres e mostra na tela 
	
	li $v0, 10	# codigo 10 == saida
	syscall 	#retorna o controle ao SO
.data
	string: .asciiz "\n Hello Word \n"
	numero: .word 102
	