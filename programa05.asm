#Programa05
#x=100000 --> $s0
#y=200000 --> $s1
#z=x+y  --> $s2


#inicio

.text
.globl main
main:

addi $s0,$zero,30000 #x=3000
addi $s0,$s0,30000 #=x=x+30000
addi $s0,$s0,30000 #=x=x+30000
addi $s0,$s0,10000 #=x=x+10000

addi $s1,$s1,30000 #=y=y+30000
addi $s1,$s1,30000 #=y=y+30000
addi $s1,$s1,30000 #=y=y+30000
addi $s1,$s1,30000 #=y=y+30000
addi $s1,$s1,30000 #=y=y+30000
addi $s1,$s1,30000 #=y=y+30000
addi $s1,$s1,20000 #=y=y+20000
add $s2,$s1,$s0 # z=x+y
#sll $t0,$s1,2 #t0=y*4
#sub $s2,$s0,$t0 #z=x-4y
