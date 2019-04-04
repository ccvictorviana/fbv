# Problema (Imprima o valor de [b])
# int a = 10;
# if (a > 0)
#   b = a + 20;
# else
#   b = a - 20;
# Saída: 30

.data
	a: .word 10
	b: .word 0
.text				
	lw $t1, a
	lw $t2, b
	
	bgtz $t1, a_is_greater_than_0	# [a]>[0], se verdade vai para [a_is_greater_than_0]
	add $t2, $t1, -20		# [b] = [a] + 20
	j print_b			# Print [b]
	
	a_is_greater_than_0:
		add $t2, $t1, 20	# [b] = [a] - 20
	
	print_b:
		# Print [b]
		li  $v0, 1
		move $a0, $t2
    		syscall
    	
    		# Exit Program
    		li $v0, 10
    		syscall