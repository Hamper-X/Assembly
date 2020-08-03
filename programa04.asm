#Programa04
#x=3 --> $s0
#y=4 --> $s1
#z=(15*+67*y)*4  --> $s2


#inicio

.text
.globl main
main:

addi $s0,$zero,3 #x=3
addi $s1,$zero,4 #y=4

sll $s0,$s0,4 #x=x*15
addi $s0,$s0,-3#x=x-3
sll $s1,$s1,6 #y=y*67
addi $s1,$s1,12 #y=y+12
add $t0,$s0,$s1 #t0=s0+s1
add $t1,$t1,$t0 #t1=t1+t0
add $t1,$t1,$t0 #t1=t1+t0
add $t1,$t1,$t0 #t1=t1+t0
add $t1,$t1,$t0 #t1=t1+t0