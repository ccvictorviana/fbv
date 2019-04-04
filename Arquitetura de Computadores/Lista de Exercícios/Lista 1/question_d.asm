# Problema (Imprima o valor de [a])
# int a = 0;
# int b = 15;
# for(int i=0; i < 3; i++)
# {
#   a += b;
# }
# Saída: 45

.data 
	a: .word 0
	b: .word 15
	i: .word 0
.text
	
	lw $t1, a
	lw $t2, b
	lw $t3, i
	
	for:
		bge $t3, 3, end_for	# [a] >= 3, se verdade vai para [end_for]
		add $t1, $t1, $t2	# [a] = [a] + [b]
		add $t3, $t3, 1		# [i] = [i] + 1
		
		j for			# Volta para instrução [for]
	end_for:
		# Print [a]
		li  $v0, 1
		move $a0, $t1
    		syscall
    	
    		# Exit Program
    		li $v0, 10
    		syscall
