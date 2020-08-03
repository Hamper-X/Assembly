# move $t1,$t0 => move o valor de $t0 para $t1
# li $t0, qualquer valor de 32 => carrega o registrador $t0 com um numero de 32 bits(aceitando negativo)
# la $t1, vary => carrega um registrador com endereço simbolico
.text 
.globl main
main:
	li $v0, 4
	la $a0, ler
	syscall
.data
	ler: .asciiz "Hello world\n"