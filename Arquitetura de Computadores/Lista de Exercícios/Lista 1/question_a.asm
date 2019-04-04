# Problema (Imprima o valor de [z])
# int x = 5;
# int y = 4;
# z = 5.(xˆ2) + x + 3.y + 8
# Saída: 150

.data
	x: .word 5
	y: .word 4
.text				
	lw $t0, x
	lw $t1, y
	
	
	mul $t2, $t0, $t0	# (xˆ2)
	mul $t3, $t2, 5		# 5.(xˆ2)
	add $t4, $t3, $t0	# 5.(xˆ2) + x
	mul $t5, $t1, 3		# 3.y
	add $t6, $t4, $t5	# 5.(xˆ2) + x + 3y
	add $t7, $t6, 8		# 5.(xˆ2) + x + 3y + 8
	
	# Print [z]
	li  $v0, 1
	move $a0, $t7
    	syscall
    	
    	# Exit Program
    	li $v0, 10
    	syscall