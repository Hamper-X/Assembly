#Programa04
#x=100000 --> $s0
#y=200000 --> $s1
#z=x-y4  --> $s2


#inicio

.text
.globl main
main:

addi $s0,$zero,0x7fffffff #x=maior numero interio possivel

addi $s1,$s1,30000 #=y=y+30000
addi $s1,$s1,30000 #=y=y+30000
addi $s1,$s1,30000 #=y=y+30000
addi $s1,$s1,30000 #=y=y+30000
addi $s1,$s1,30000 #=y=y+30000
addi $s1,$s1,30000 #=y=y+30000
addi $s1,$s1,30000 #=y=y+30000
addi $s1,$s1,30000 #=y=y+30000
addi $s1,$s1,30000 #=y=y+30000
addi $s1,$s1,30000 #=y=y+30000

sll $t0,$s1,2 #t0=y*4
sub $s2,$s0,$t0 #z=x-4y
