#Programa07


#inicio

.text
.globl main
main:

addi $8,$zero,0 #garantindo que o valor o registrador sera 0
addi $8,$zero,0x1234 #adicionando 1234 ao registrador 
sll $8,$8,16 #arredando os valores pra esquerda
addi $8,$8,0x5678 #adicionando 5678 ao registrador
#$8 atualmente = 0x12345678

#alocar 0x12 no registrador $9
andi $9,$8,0xff000000
srl $9,$9,24

#alocar 0x34 no registrador $10
andi $10,$8,0x00ff0000
sll $10,$10,8
srl $10,$10,24

#alocar 0x56 no registrador $11
andi $11,$8,0x0000ff00
srl $11,$11,8

#alocar 0x78 no registrador $12
andi $12,$8,0x000000ff






