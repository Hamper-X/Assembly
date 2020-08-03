#Programa03
#x=3 --> $s0
#y=4 --> $s1
#z=(15*+67*y)*4  --> $s2


#inicio

.text
.globl main
main:

addi $s0,$zero,3 #x=3
addi $s1,$zero,4 #y=4

add $s0,$s0,$s0 #x=x+x
add $s0,$s0,$s0 #x=x+x
add $s0,$s0,$s0 #x=x+x
add $s0,$s0,$s0 #x=x+x
addi $s0,$s0,-3 #x=x-33

add $s1,$s1,$s1 #y=y+y
add $s1,$s1,$s1 #y=y+y
add $s1,$s1,$s1 #y=y+y
add $s1,$s1,$s1 #y=y+y
add $s1,$s1,$s1 #y=y+y
add $s1,$s1,$s1 #y=y+y
addi $s1,$s1,2  #y=y+2


add $t0,$s0,$s1 #t0=(15*x+67*y)
add $s2,$s2,$t0 #z=z+t0
add $s2,$s2,$t0 #z=z+t0
add $s2,$s2,$t0 #z=z+t0
add $s2,$s2,$t0 #z=z+t0