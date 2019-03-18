.data
	f: .word 0
	g: .word 6
	h: .word 7
	b: .word 1,2,3,4,5
.text
	lw $t0, g
	lw $t1, h
	la $t3, b
	lw $t2, 16($t3)
	
	add $t3, $t0, $t1
	add $t3, $t3, $t2
	sw $t3, f 
	
	# Print
	li  $v0, 1
	move $a0, $t3
    	syscall
    	
   	# End Program
    	li $v0, 10
    	syscall