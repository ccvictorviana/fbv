.data
	f: .word 0
	g: .word 6
	h: .word 7
	arrayA: .word 1,2,3,4,5,6
	arrayB: .word 1,2,3,4,5
.text
	lw $t0, g
	lw $t1, h
	la $t3, arrayB
	la $t4, arrayA
	
	lw $t2, 16($t3)
	mul $t5, $t2, 4
	
	
	
	add $s3, $t5,$t4
	

	
	
	lw $t6, 0($s3)
	sub $t3, $t0, $t6
	sw $t3, f 
	
	# Print
	li  $v0, 1
	move $a0, $t3
    	syscall
    	
   	# End Program
    	li $v0, 10
    	syscall