.text
.globl main
#mfhi $s
#mflo $s
main:
	addi $t0,$0,0x1001
	sll $t0,$t0,16
	lw $t1,0($t0)
	
	#identificando se o numero e negativo 
	slt $t2,$t1,$0 #teste para ver se e menor que zero
	bne $t2,$0,negativo #se =0 então e positivo, ne !=0 e negativo
	sw $t1,0($t0)
	j fim
	negativo:
		add $s1,$t1,$t1	
		sub $s2,$t1,$s1 #s2 = -t1 -(-2t1) => s2=+t1
		sw $s2,0($t0)
	fim:	
	 
.data
	x: .word -21
	