.data

  B: .word 1, 2, 3, 4, 5 

.text

#g
li $t0, 10
#h
li $t1, 7

#get 4 position from B
la $t3, B
li $t2 , 3
add $t2, $t2, $t2 #x2
add $t2, $t2, $t2 #x4

add $s3, $t2,$t3 # sum(OFFSET valid + position)
lw $t4, 0($s3)

add $s1, $t0,$t1
add $s1, $s1,$t4

#impressao de f
 li $v0, 1
add   $a0, $a0,$s1
syscall